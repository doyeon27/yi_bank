package kroryi.yi_bank.handler.employee;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kroryi.yi_bank.dto.Employee;
import kroryi.yi_bank.service.EmployeeService;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/main/employeeSearch.do")
public class EmployeeSearchHandler extends HttpServlet {
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

        String employee = String.valueOf(jsonInput);

        List<Employee> result = employeeService.nameSearchEmployee(employee);

        System.out.println(result);


//         결과에 따라 응답
        String dick = this.gson.toJson(result);
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        out.print(dick);
        out.flush();
    }

}

