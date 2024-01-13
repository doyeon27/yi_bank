package kroryi.yi_bank.dao.impl;

import kroryi.yi_bank.dao.EmployeeDao;
import kroryi.yi_bank.dto.Employee;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDaoImpl implements EmployeeDao {

    private static final EmployeeDaoImpl instance = new EmployeeDaoImpl();

    public EmployeeDaoImpl() {

    }

    String jdbcDriver = "jdbc:apache:commons:dbcp:bank";

    public static EmployeeDaoImpl getInstance() {
        return instance;
    }


    @Override
    public List<Employee> allEmployee() throws SQLException {

        List<Employee> list = new ArrayList<>();
        String sql = "select * from employee order by empCode";

        try (Connection con = DriverManager.getConnection(jdbcDriver);
             PreparedStatement pstmt = con.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                list.add(getEmployee(rs));
            }
            return list;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    private Employee getEmployee(ResultSet rs) throws SQLException {

        String empCode = rs.getString("empCode");
        String empName = rs.getString("empName");
        String empTitle = rs.getString("empTitle");
        String empAuth = rs.getString("empAuth");
        int empSalary = rs.getInt("empSalary");
        String empTel = rs.getString("empTel");
        String empId = rs.getString("empId");
        String empPwd = rs.getString("empPwd");
        int deptNo = rs.getInt("deptNo");
        String pic = rs.getString("pic");
        boolean empRetire = rs.getBoolean("empRetire");

        return new Employee(empCode, empName, empTitle, empAuth, empSalary, empTel, empId, empPwd, deptNo, pic, empRetire);

    }


    // asdf
    @Override
    public Employee getEmployeeById(String empId) throws SQLException {
        String sql = "SELECT * FROM employee WHERE empId = ?";
        try (Connection con = DriverManager.getConnection(jdbcDriver);
             PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setString(1, empId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return getEmployee(rs);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


//            pstmt.setString(2, employee.getEmpAuth());
//     adf , empAuth=?

    @Override
    public int updateEmployee(Employee employee) throws SQLException {
        int res = -1;

        String sql = "UPDATE employee SET empName=?, empCode=?, empTitle=?, empAuth=?, empSalary=?, empTel=?, empPwd=?, deptNo=?, empRetire=? WHERE empId=?";
        try (Connection con = DriverManager.getConnection(jdbcDriver);
             PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setString(1, employee.getEmpName());
            pstmt.setString(2, employee.getEmpCode());
            pstmt.setString(3, employee.getEmpTitle());
            pstmt.setString(4, employee.getEmpAuth());
            pstmt.setInt(5, employee.getEmpSalary());
            pstmt.setString(6, employee.getEmpTel());
            pstmt.setString(7, employee.getEmpPwd());
            pstmt.setInt(8, employee.getDeptNo());
            pstmt.setBoolean(9, employee.isEmpRetire());
            pstmt.setString(10, employee.getEmpId());

            res = pstmt.executeUpdate();

        }
        return res;
    }


    public int deleteEmployee(Employee employee) throws SQLException {
        int res = -1;
        String sql = "delete from employee where empId = ?";
        try (Connection con = DriverManager.getConnection(jdbcDriver);
             PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setString(1, employee.getEmpId());

            res = pstmt.executeUpdate();
        }
        return res;
    }


    // 추가
    @Override
    public int insertEmployee(Employee employee) throws SQLException {
        int res = -1;
        String sql = "INSERT INTO employee(empCode, empName, empTitle, empAuth, empSalary, empId, empPwd, deptNo, empTel) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection con = DriverManager.getConnection(jdbcDriver);
             PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setString(1, employee.getEmpCode());
            pstmt.setString(2, employee.getEmpName());
            pstmt.setString(3, employee.getEmpTitle());
            pstmt.setString(4, employee.getEmpAuth());
            pstmt.setInt(5, employee.getEmpSalary());
            pstmt.setString(6, employee.getEmpId());
            pstmt.setString(7, employee.getEmpPwd());
            pstmt.setInt(8, employee.getDeptNo());
//            pstmt.setBoolean(9, employee.isEmpRetire());
            pstmt.setString(9, employee.getEmpTel());


            res = pstmt.executeUpdate();
        }
        return res;
    }



    @Override
    public ArrayList<Employee> searchEmployee(String employee) throws SQLException {

        List<Employee> list = new ArrayList<>();

        String sql = "select * from employee where empName like ?";
        try (Connection con = DriverManager.getConnection(jdbcDriver);
             PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setString(1, "%" + employee + "%");

            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    // 여기서 ResultSet에서 필요한 값을 가져와서 Employee 객체에 설정
                    Employee result = new Employee();
                    result.setEmpCode(rs.getString("empCode"));
                    result.setEmpName(rs.getString("empName"));
                    result.setEmpTitle(rs.getString("empTitle"));
                    result.setEmpAuth(rs.getString("empAuth"));
                    result.setEmpSalary(rs.getInt("empSalary"));
                    result.setEmpId(rs.getString("empId"));
                    result.setEmpPwd(rs.getString("empPwd"));
                    result.setDeptNo(rs.getInt("deptNo"));
                    result.setEmpTel(rs.getString("empTel"));
                    result.setEmpRetire(rs.getBoolean("empRetire"));
                    result.setPic(rs.getString("pic"));

                    list.add(result);

                }

            }
            catch (Exception e){
                e.printStackTrace();
            }
    }
        return (ArrayList<Employee>) list;

    }

}
