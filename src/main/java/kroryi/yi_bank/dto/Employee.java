package kroryi.yi_bank.dto;

public class Employee {
    private String empCode;
    private String empName;
    private String empTitle;
    private String empAuth;
    private int empSalary;
    private String empTel;
    private String empId;
    private String empPwd;
    private int deptNo;
    private String pic;
    private boolean empRetire;

    public Employee() {

    }

    public Employee(String empCode, String empName, String empTitle, String empAuth, int empSalary, String empTel,
                    String empId, String empPwd, int deptNo, String pic, boolean empRetire) {
        super();
        this.empCode = empCode;
        this.empName = empName;
        this.empTitle = empTitle;
        this.empAuth = empAuth;
        this.empSalary = empSalary;
        this.empTel = empTel;
        this.empId = empId;
        this.empPwd = empPwd;
        this.deptNo = deptNo;
        this.pic = pic;
        this.empRetire = empRetire;

    }

    @Override
    public String toString() {
        return "Employee{" +
                "empCode='" + empCode + '\'' +
                ", empName='" + empName + '\'' +
                ", empTitle='" + empTitle + '\'' +
                ", empAuth='" + empAuth + '\'' +
                ", empSalary=" + empSalary +
                ", empTel='" + empTel + '\'' +
                ", empId='" + empId + '\'' +
                ", empPwd='" + empPwd + '\'' +
                ", deptNo=" + deptNo +
                ", pic='" + pic + '\'' +
                ", empRetire=" + empRetire +
                '}';
    }

    public String getEmpCode() {
        return empCode;
    }

    public void setEmpCode(String empCode) {
        this.empCode = empCode;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public String getEmpTitle() {
        return empTitle;
    }

    public void setEmpTitle(String empTitle) {
        this.empTitle = empTitle;
    }

    public String getEmpAuth() {
        return empAuth;
    }

    public void setEmpAuth(String empAuth) {
        this.empAuth = empAuth;
    }

    public int getEmpSalary() {
        return empSalary;
    }

    public void setEmpSalary(int empSalary) {
        this.empSalary = empSalary;
    }

    public String getEmpTel() {
        return empTel;
    }

    public void setEmpTel(String empTel) {
        this.empTel = empTel;
    }

    public String getEmpId() {
        return empId;
    }

    public void setEmpId(String empId) {
        this.empId = empId;
    }

    public String getEmpPwd() {
        return empPwd;
    }

    public void setEmpPwd(String empPwd) {
        this.empPwd = empPwd;
    }

    public int getDeptNo() {
        return deptNo;
    }

    public void setDeptNo(int deptNo) {
        this.deptNo = deptNo;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public boolean isEmpRetire() {
        return empRetire;
    }

//    public void setEmpRetire(boolean empRetire) {
//        this.empRetire = empRetire;
//    }



    public void setEmpRetire(boolean empRetire) {
        this.empRetire = empRetire;
    }
}
