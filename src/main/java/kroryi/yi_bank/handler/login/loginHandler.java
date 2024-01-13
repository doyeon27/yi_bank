package kroryi.yi_bank.handler.login;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kroryi.yi_bank.dto.Employee;
import kroryi.yi_bank.dto.Notice;
import kroryi.yi_bank.service.EmployeeService;
import kroryi.yi_bank.service.NoticeService;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/login.do")
public class loginHandler extends HttpServlet {

    private EmployeeService employeeService = new EmployeeService();


    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        res.setContentType("text/html");
        req.setCharacterEncoding("utf-8");

        String userid = req.getParameter("userid");
        String password = req.getParameter("password");

        System.out.println(userid);

        Employee employee = null;

        try {
            employee = employeeService.selectByempId(userid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        System.out.println(employee);

        HttpSession session = req.getSession();
        session.setMaxInactiveInterval(60);

        if (employee != null && userid.equals(employee.getEmpId()) && password.equals(employee.getEmpPwd())) {

            System.out.println("아이디 비번 일치");
            res.sendRedirect("/template.jsp");

            session.setAttribute("userid", employee.getEmpId());

            if (session.getAttribute("userid") != null) {

                System.out.println("현재 로그인 상태");

            } else {

                res.sendRedirect("/index.jsp");
                System.out.println("세션에 userid가 없음");
            }


        } else {

            session.invalidate();
            System.out.println("틀림");
            res.sendRedirect("/index.jsp");
        }
    }

}