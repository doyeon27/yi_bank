package kroryi.yi_bank.dao;

import kroryi.yi_bank.dto.Employee;

import java.sql.SQLException;
import java.util.List;

public interface EmployeeDao {

    List<Employee> allEmployee() throws SQLException;

    // asdf
    Employee getEmployeeById(String empId) throws SQLException;

    int updateEmployee(Employee employee) throws SQLException;


    public int deleteEmployee(Employee employee) throws SQLException;

    public int insertEmployee(Employee employee) throws SQLException;

    public List<Employee> searchEmployee(String employee) throws SQLException;

}
