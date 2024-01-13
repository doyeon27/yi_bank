package kroryi.yi_bank.handler.employee;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kroryi.yi_bank.dto.Employee;
import kroryi.yi_bank.dto.Notice;
import kroryi.yi_bank.service.EmployeeService;
import kroryi.yi_bank.service.NoticeService;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/main/employeeUpdateProcess.do")
public class EmployeeUpdateHandler extends HttpServlet {
    // ...
    private Gson gson = new Gson();

    private EmployeeService employeeService = new EmployeeService();


    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {
            process(req, res);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        BufferedReader reader = request.getReader();
        StringBuilder jsonInput = new StringBuilder();
        String line;

        while ((line = reader.readLine()) != null) {
            jsonInput.append(line);
        }

        System.out.println(jsonInput);


        Employee employee = gson.fromJson(jsonInput.toString(), Employee.class);

//        System.out.println(employee);

//        System.out.println(employee.isEmpRetire());
//
//        boolean isRetired = employee.isEmpRetire();
//        System.out.println("isRetired의 타입은: " + isRetired);



        int result = employeeService.updateEmployee(employee);

        // 결과에 따라 응답
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();

        if (result > 0) {
            out.print(gson.toJson("수정완료"));
        } else {
            out.print(gson.toJson("수정실패"));
        }

        out.flush();
    }

}

