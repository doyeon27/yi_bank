package kroryi.yi_bank.service;

import kroryi.yi_bank.dao.EmployeeDao;
import kroryi.yi_bank.dao.impl.EmployeeDaoImpl;
import kroryi.yi_bank.dto.Employee;
import kroryi.yi_bank.dto.Notice;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class EmployeeService {

    private EmployeeDao dao;
    private DataSource dataSource;

    public EmployeeService() {

        dao = EmployeeDaoImpl.getInstance();
    }

    public List<Employee> showEmployeeByAll() throws SQLException {
        return dao.allEmployee();
    }

    public EmployeeService(EmployeeDao dao) {
        this.dao = dao;
    }

    public Employee showEmployeeById(String empId) {
        try {
            // EmployeeDao를 사용하여 해당 empId에 해당하는 직원을 가져옴
            return dao.getEmployeeById(empId);
        } catch (SQLException e) {
            // 예외 처리 로직 추가
            e.printStackTrace();
            return null;
        }
    }


    // asdf
    public int updateEmployee(Employee employee) throws SQLException {
        return dao.updateEmployee(employee);
    }

    public int deleteEmployee(Employee employee) throws SQLException {
        return dao.deleteEmployee(employee);
    }

    public int insertEmployee(Employee employee) throws SQLException {
        return dao.insertEmployee(employee);
    }

    public int addEmployee(Employee employee) throws SQLException {
        return dao.insertEmployee(employee);
    }


    // 로그인 관련

    public Employee selectByempId(String employee) throws SQLException {
        return dao.getEmployeeById(employee);
    }


    // 로그인
    public List<Employee> nameSearchEmployee(String employee) throws SQLException {
        return  dao.searchEmployee(employee);

    }

}
