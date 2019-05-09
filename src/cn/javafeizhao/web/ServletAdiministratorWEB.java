package cn.javafeizhao.web;

import cn.javafeizhao.dbmain.UserAdministrator;

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
        UserAdministrator user=new UserAdministrator();
        user.setAdministrator(adiministrator);
        user.setPassword(password);







    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            this.doPost(request,response);
    }
}
