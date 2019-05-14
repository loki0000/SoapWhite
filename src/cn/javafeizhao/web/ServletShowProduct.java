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
        System.out.println(totalNumber);
        //每页显示的条数
        int eachPage=ProductPagingDataDispose.getEachPage(8);
        //总页数
        int numberOfTotalPages=ProductPagingDataDispose.getNumberOfTotalPages(totalNumber,eachPage);
        //当前页数
        int atPresentPageTree=ProductPagingDataDispose.getAtPresentPageTree(1);
        //商品资源
        List<ShopAttritube> shopAttritubeList=ProductPagingDataDispose.getShopListAttritube(atPresentPageTree,eachPage);



    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        this.doGet(request,response);
    }
}
