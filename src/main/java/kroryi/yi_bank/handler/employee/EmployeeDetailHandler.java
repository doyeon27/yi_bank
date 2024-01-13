package kroryi.yi_bank.handler.employee;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kroryi.yi_bank.dto.Employee;
import kroryi.yi_bank.service.EmployeeService;

import java.io.IOException;

@WebServlet("/main/employeeDetail.do")
public class EmployeeDetailHandler extends HttpServlet {

    private EmployeeService employeeService = new EmployeeService();



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String empId = request.getParameter("empId");

//        System.out.println("1111111" + empId);
//        Employee employee = null;
        Employee employee = employeeService.showEmployeeById(empId);
//        System.out.println(employee);
//        employee = employeeService.showEmployeeById(empId);


        if (employee != null) {
            // 직원 정보를 JSON으로 변환하여 클라이언트에 응답
            String employeeJson = new Gson().toJson(employee);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(employeeJson);
        } else {
            response.getWriter().println("해당 직원 데이터를 찾을 수 없습니다: " + empId);
        }
    }
}
