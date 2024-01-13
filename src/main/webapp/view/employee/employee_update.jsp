<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>
<%@ page import="kroryi.yi_bank.dto.Employee" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>직원 수정</title>
    <!-- 기타 필요한 스타일시트, 스크립트 등의 리소스를 로드 -->
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

<h1 id="h1_title">직원 수정</h1>

<form>
    <label for="name">코드:</label>
    <input type="text" id="empCode" name="empCode"><br>

<%--    <label for ="empId">아이디 : </label>--%>
<%--    <input type="text" id="empId" name="empId"><br>--%>

    <label for="name">이름:</label>
    <input type="text" id="name" name="name"><br>

    <label for="name">직급:</label>
    <input type="text" id="empTitle" name="empTitle"><br>

    <label for="name">권한:</label>
    <input type="text" id="empAuth" name="empAuth"><br>

    <label for="name">연봉:</label>
    <input type="text" id="empSalary" name="empSalary"><br>

    <label for="name">전화 번호:</label>
    <input type="text" id="empTel" name="empTel"><br>

    <label for ="name">비밀 번호 : </label>
    <input type="text" id="empPwd" name="empPwd"><br>

    <label for ="name">부서 번호 : </label>
    <input type="text" id="deptNo" name="deptNo"><br>

    <label for ="name">퇴사 여부 : </label>
<%--    <input type="checkbox" id="empRetire"  name="empRetire" onchange="checkCheckbox()">--%>
    <input type="text" id="empRetire" name="empRetire"><br>

    <div style="display:none;">
    <label for ="name">아이디 : </label>
    <input type="text" id="empId" name="empId"><br>
    </div>
<%--    <label for="Auth">권한:</label>--%>
<%--    <input type="text" id="Auth" name="Auth" required><br>--%>

    <!-- 기타 필요한 정보들도 위와 같이 추가 -->

    <button id="mod">수정</button>

</form>

<%--<a href="/main/employeeDetail.do?empId=${employee.empId}">취소</a>--%>

</body>

<script>




    function filldate(data) {

        $("#empCode").val(data.empCode);
        $("#name").val(data.empName);
        $("#empId").val(data.empId);
        $("#empTitle").val(data.empTitle);
        $("#empAuth").val(data.empAuth);
        $("#empSalary").val(data.empSalary);
        $("#empTel").val(data.empTel);
        $("#empPwd").val(data.empPwd);
        $("#deptNo").val(data.deptNo);
        // $("#empRetire").val(data.empRetire).prop("checked");
        $("#empRetire").val(data.empRetire);
    }


    $(document).ready(function () {



        const urlParams = new URLSearchParams(window.location.search);
        const empId = urlParams.get('empId');

        // empId를 이용해 서블릿에 데이터 요청
        $.ajax({
            url: "/main/employeeDetail.do",
            type: 'POST',
            dataType: 'json',
            data: {empId: empId},
            success: function (data) {
                console.log(data);
                filldate(data);
                if (data) {
                } else {
                }
            },
            error: function (err) {
                console.log(err.responseText);
            }
        });
    });

    $("#mod").on('click', function () {
        const confirmUpd = confirm("수정 하시겠습니까?")

        if (confirmUpd){

            var name = $("#name").val();
            var id = $("#empId").val();
            var code = $("#empCode").val();
            var empTitle = $("#empTitle").val();
            var empAuth = $("#empAuth").val();
            var empSalary = $("#empSalary").val();
            var empTel = $("#empTel").val();
            var empPwd = $("#empPwd").val();
            var deptNo = $("#deptNo").val();
            var empRetire = $("#empRetire").val();


            const data = {
                empCode : code,
                empName : name,
                empId : id,
                empTitle : empTitle,
                empAuth : empAuth,
                empSalary : empSalary,
                empTel : empTel,
                empPwd : empPwd,
                deptNo : deptNo,
                empRetire : empRetire,
            }


            $.ajax({
                url : "/main/employeeUpdateProcess.do",
                type: 'POST',
                dataType: 'JSON',
                data: JSON.stringify(data),
                success: function (data){
                    alert("수정 되었습니다.")
                    window.location.href="/template.jsp?pageGroup=employee&page=list";
                }

            })
        }
        else {
            alert("수정 취소 되었습니다.")
            return false;
            // window.location.href = "/template.jsp?pageGroup=employee&page=list"
        }
    });



</script>

</html>


