package cn.javafeizhao.web;

import cn.javafeizhao.dbmain.PagingBean;
import cn.javafeizhao.dbmain.ShopAttritube;
import cn.javafeizhao.servlet.ProductPagingDataDispose;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletShowProduct")
public class ServletShowProduct extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //获取实体bean
        PagingBean pagingBean=new PagingBean();

        //获取实体bean中页面所需要的参数；
        //总条数
        int totalNumber= ProductPagingDataDispose.getSumNumber();
        pagingBean.setTotalNumber(totalNumber);
        //每页显示的条数
        int eachPage=ProductPagingDataDispose.getEachPage(8);
        pagingBean.setEachPage(eachPage);
        //总页数
        int numberOfTotalPages=ProductPagingDataDispose.getNumberOfTotalPages(totalNumber,eachPage);
        pagingBean.setNumberOfTotalPages(numberOfTotalPages);
        //当前页数
        int index=1;
        if (request.getParameter("index")!=null) {
            index = Integer.parseInt(request.getParameter("index"));
        }
        int atPresentPageTree=ProductPagingDataDispose.getAtPresentPageTree(index);
        pagingBean.setAtPresentPageTree(atPresentPageTree);
        //商品资源
        List<ShopAttritube> shopAttritubeList=ProductPagingDataDispose.getShopListAttritube(atPresentPageTree,eachPage);
        pagingBean.setShopAttritubes(shopAttritubeList);
        pagingBean.setShopListlength(shopAttritubeList);

        //将实体bean存入request域中
        request.setAttribute("pagingBean",pagingBean);
        //转发到jsp页面
        request.getRequestDispatcher("shop/index.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        this.doGet(request,response);
    }
}
