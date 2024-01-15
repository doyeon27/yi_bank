<%--<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>--%>
<%--<%@ page import="kroryi.yi_bank.dto.Employee" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="ko">--%>
<%--<head>--%>
<%--    <title>사원 추가</title>--%>

<%--&lt;%&ndash;    추가&ndash;%&gt;--%>
<%--    <!-- 기타 필요한 스타일시트, 스크립트 등의 리소스를 로드 -->--%>
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">--%>
<%--    <script src="https://code.jquery.com/jquery-latest.min.js"></script>--%>
<%--    <!-- 이하 생략 -->--%>


<%--    --%>
<%--    <!-- 기타 필요한 스타일시트, 스크립트 등의 리소스를 로드 -->--%>
<%--    <script src="https://code.jquery.com/jquery-latest.min.js"></script>--%>
<%--</head>--%>
<%--<body>--%>

<%--<h1 id="h1_title">사원 추가</h1>--%>
<%--<p> - 부서 번호는 1~2 까지만 있음</p>--%>

<%--<form>--%>
<%--    <label for="name">코드:</label>--%>
<%--    <input type="text" id="empCode" name="empCode"><br>--%>

<%--    &lt;%&ndash;    <label for ="empId">아이디 : </label>&ndash;%&gt;--%>
<%--    &lt;%&ndash;    <input type="text" id="empId" name="empId"><br>&ndash;%&gt;--%>

<%--    <label for="name">이름:</label>--%>
<%--    <input type="text" id="name" name="name"><br>--%>

<%--    <label for="name">직급:</label>--%>
<%--    <input type="text" id="empTitle" name="empTitle"><br>--%>

<%--    <label for="name">권한:</label>--%>
<%--    <input type="text" id="empAuth" name="empAuth"><br>--%>

<%--    <label for="name">연봉:</label>--%>
<%--    <input type="text" id="empSalary" name="empSalary"><br>--%>

<%--    <label for="name">전화 번호:</label>--%>
<%--    <input type="text" id="empTel" name="empTel"><br>--%>

<%--    <label for="name">비밀 번호 : </label>--%>
<%--    <input type="text" id="empPwd" name="empPwd"><br>--%>

<%--    <label for="name">부서 번호 : </label>--%>
<%--    <input type="text" id="deptNo" name="deptNo"><br>--%>

<%--&lt;%&ndash;    <label for="name">퇴사 여부 : </label>&ndash;%&gt;--%>
<%--&lt;%&ndash;    &lt;%&ndash;    <input type="checkbox" id="empRetire"  name="empRetire" onchange="checkCheckbox()">&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="text" id="empRetire" name="empRetire"><br>&ndash;%&gt;--%>

<%--    <label for="name">아이디 : </label>--%>
<%--    <input type="text" id="empId" name="empId"><br>--%>

<%--    &lt;%&ndash;    <label for="Auth">권한:</label>&ndash;%&gt;--%>
<%--    &lt;%&ndash;    <input type="text" id="Auth" name="Auth" required><br>&ndash;%&gt;--%>

<%--    <!-- 기타 필요한 정보들도 위와 같이 추가 -->--%>

<%--    <button id="add">추가</button>--%>

<%--</form>--%>

<%--&lt;%&ndash;<a href="/main/employeeDetail.do?empId=${employee.empId}">취소</a>&ndash;%&gt;--%>

<%--</body>--%>

<%--<script>--%>


<%--    // function filldate(data) {--%>
<%--    //--%>
<%--    //     $("#empCode").val(data.empCode);--%>
<%--    //     $("#name").val(data.empName);--%>
<%--    //     $("#empId").val(data.empId);--%>
<%--    //     $("#empTitle").val(data.empTitle);--%>
<%--    //     $("#empAuth").val(data.empAuth);--%>
<%--    //     $("#empSalary").val(data.empSalary);--%>
<%--    //     $("#empTel").val(data.empTel);--%>
<%--    //     $("#empPwd").val(data.empPwd);--%>
<%--    //     $("#deptNo").val(data.deptNo);--%>
<%--    //     // $("#empRetire").val(data.empRetire).prop("checked");--%>
<%--    //     $("#empRetire").val(data.empRetire);--%>
<%--    // }--%>


<%--    // $(document).ready(function () {--%>
<%--    //--%>
<%--    //--%>
<%--    //     const urlParams = new URLSearchParams(window.location.search);--%>
<%--    //     const empId = urlParams.get('empId');--%>
<%--    //--%>
<%--    //     // empId를 이용해 서블릿에 데이터 요청--%>
<%--    //     $.ajax({--%>
<%--    //         url: "/main/employeeAdd.do",--%>
<%--    //         type: 'POST',--%>
<%--    //         dataType: 'json',--%>
<%--    //         data: {empId: empId},--%>
<%--    //         success: function (data) {--%>
<%--    //             console.log(data);--%>
<%--    //             if (data) {--%>
<%--    //             } else {--%>
<%--    //             }--%>
<%--    //         },--%>
<%--    //         error: function (err) {--%>
<%--    //             console.log(err.responseText);--%>
<%--    //         }--%>
<%--    //     });--%>
<%--    // });--%>



<%--    $("#add").on('click', function () {--%>
<%--        const confirmUpd = confirm("추가 하시겠습니까?")--%>

<%--        if (confirmUpd) {--%>

<%--            var name = $("#name").val();--%>
<%--            var id = $("#empId").val();--%>
<%--            var code = $("#empCode").val();--%>
<%--            var empTitle = $("#empTitle").val();--%>
<%--            var empAuth = $("#empAuth").val();--%>
<%--            var empSalary = $("#empSalary").val();--%>
<%--            var empTel = $("#empTel").val();--%>
<%--            var empPwd = $("#empPwd").val();--%>
<%--            var deptNo = $("#deptNo").val();--%>
<%--            // var empRetire = $("#empRetire").val();--%>


<%--            const data = {--%>
<%--                empCode: code,--%>
<%--                empName: name,--%>
<%--                empId: id,--%>
<%--                empTitle: empTitle,--%>
<%--                empAuth: empAuth,--%>
<%--                empSalary: empSalary,--%>
<%--                empTel: empTel,--%>
<%--                empPwd: empPwd,--%>
<%--                deptNo: deptNo,--%>
<%--                // empRetire: empRetire,--%>
<%--            }--%>

<%--            $.ajax({--%>
<%--                    url: "/main/employeeAdd.do",--%>
<%--                    type: 'POST',--%>
<%--                    dataType: 'JSON',--%>
<%--                    data: JSON.stringify(data),--%>
<%--                    success: function (data) {--%>
<%--                        alert("추가 되었습니다.")--%>
<%--                        window.location.href = "/template.jsp?pageGroup=employee&page=add"--%>
<%--                    }--%>
<%--                }--%>
<%--            )--%>
<%--        } else {--%>
<%--            alert("추가 취소 되었습니다.")--%>
<%--            window.location.href = "/template.jsp?pageGroup=employee&page=add"--%>
<%--        }--%>
<%--    });--%>

<%--</script>--%>

<%--</html>--%>




<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>
<%@ page import="kroryi.yi_bank.dto.Employee" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>사원 추가</title>
    <!-- 기타 필요한 스타일시트, 스크립트 등의 리소스를 로드 -->
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <!-- 부트스트랩 CDN 추가 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body class="container mt-5">
<div class="card mx-auto" style="max-width: 500px;">
    <div class="card-header">
        <h1 class="text-center">사원 추가</h1>
    </div>
    <div class="card-body">
        <form>
            <div class="form-group">
                <label for="empCode">코드:</label>
                <input type="text" class="form-control" id="empCode" name="empCode">
            </div>

            <div class="form-group">
                <label for="name">이름:</label>
                <input type="text" class="form-control" id="name" name="name">
            </div>

            <div class="form-group">
                <label for="name">아이디:</label>
                <input type="text" class="form-control" id="empId" name="empId">
            </div>

            <div class="form-group">
                <label for="empTitle">직급:</label>
                <input type="text" class="form-control" id="empTitle" name="empTitle">
            </div>

            <div class="form-group">
                <label for="empAuth">권한:</label>
                <input type="text" class="form-control" id="empAuth" name="empAuth">
            </div>

            <div class="form-group">
                <label for="empSalary">연봉:</label>
                <input type="text" class="form-control" id="empSalary" name="empSalary">
            </div>

            <div class="form-group">
                <label for="empTel">전화 번호:</label>
                <input type="text" class="form-control" id="empTel" name="empTel">
            </div>

            <div class="form-group">
                <label for="empPwd">비밀 번호:</label>
                <input type="text" class="form-control" id="empPwd" name="empPwd">
            </div>

            <div class="form-group">
                <label for="deptNo">부서 번호:</label>
                <input type="text" class="form-control" id="deptNo" name="deptNo">
            </div>

            <button type="button" class="btn btn-primary btn-block" id="add">추가</button>
        </form>
    </div>
    <div class="card-footer text-muted text-center">
        <p>- 부서 번호는 1~2 까지만 있음</p>
    </div>
</div>

<!-- 부트스트랩 JS 및 Popper.js 스크립트 추가 -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<script>
    $("#add").on('click', function () {
        const confirmUpd = confirm("추가 하시겠습니까?")
        if (confirmUpd) {
            var name = $("#name").val();
            var id = $("#empId").val();
            var code = $("#empCode").val();
            var empTitle = $("#empTitle").val();
            var empAuth = $("#empAuth").val();
            var empSalary = $("#empSalary").val();
            var empTel = $("#empTel").val();
            var empPwd = $("#empPwd").val();
            var deptNo = $("#deptNo").val();

            const data = {
                empCode: code,
                empName: name,
                empId: id,
                empTitle: empTitle,
                empAuth: empAuth,
                empSalary: empSalary,
                empTel: empTel,
                empPwd: empPwd,
                deptNo: deptNo,
            }

            $.ajax({
                url: "/main/employeeAdd.do",
                type: 'POST',
                dataType: 'JSON',
                data: JSON.stringify(data),
                success: function (data) {
                    alert("추가 되었습니다.")
                    window.location.href = '/template.jsp?pageGroup=employee&page=list';
                }
            });
        } else {
            alert("추가 취소 되었습니다.")
            window.location.href = "/template.jsp?pageGroup=employee&page=add"
        }
    });
</script>
</body>
</html>

