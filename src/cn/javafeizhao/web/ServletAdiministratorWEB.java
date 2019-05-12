package cn.javafeizhao.web;

import cn.javafeizhao.dbmain.UserAdministrator;
import cn.javafeizhao.servlet.AdiministeratorVerify;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletAdiministratorWEB")
public class ServletAdiministratorWEB extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //获取数据
            request.setCharacterEncoding("utf-8");
            String adiministrator=request.getParameter("adiministrator");
            String password=request.getParameter("password");
        //封装数据
        UserAdministrator.setAdministrator(adiministrator);
        UserAdministrator.setPassword(password);

        //验证数据
        AdiministeratorVerify adiministeratorVerify=new AdiministeratorVerify();
        if(adiministeratorVerify.verifyAdiministerator()) {
            request.getRequestDispatcher("backPage.jsp").forward(request, response);
        }else {
            response.getWriter().write("I'm sorry");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            this.doPost(request,response);
    }
}
