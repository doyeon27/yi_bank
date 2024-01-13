<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>
<%@ page import="kroryi.yi_bank.dto.Employee" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>직원 상세 정보</title>
    <!-- 기타 필요한 스타일시트, 스크립트 등의 리소스를 로드 -->
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>


<body>

<h1 id="h1_title">직원 상세 정보</h1>
<p> - 부서 번호는 1~2 까지만 있음</p>


<div id="employeeDetail"></div>

<button id="mod">수정</button>
<button id="del">삭제</button>

<script>


    $(document).ready(function () {
        // 페이지 로드시, URL에서 empId 파라미터 가져오기
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
                const employeeDetailDiv = document.getElementById('employeeDetail');

                if(data){
                    // 데이터를 받아와서 화면에 출력
                    employeeDetailDiv.innerHTML = `<ul>
                        <li>코드 : ${data.empCode}</li>
                        <li>이름 : ${data.empName}</li>
                        <li>직급 : ${data.empTitle}</li>
                        <li>권한 : ${data.empAuth}</li>
                        <li>연봉 : ${data.empSalary}</li>
                        <li>전화 번호 : ${data.empTel}</li>
                        <li>아이디 : ${data.empId}</li>
                        <li>비밀 번호 : ${data.empPwd}</li>
                        <li>부서 번호 : ${data.deptNo}</li>
                        <li>퇴사 여부 : ${data.empRetire}</li>
                        <%--<li>퇴사 여부 : ${data.empRetire}</li>--%>
                    </ul>`;



                } else {
                    // 데이터가 없는 경우에 대한 처리
                    employeeDetailDiv.innerHTML = '데이터가 없습니다.';
                }





                // 삭제

                $("#del").on('click', function () {
                    const confirmDelete = confirm("삭제 하시겠습니까?");

                    if (confirmDelete) {
                        const data = {
                            empId: empId
                        }
                        $.ajax({
                            url: "/main/employeeDelete.do",
                            type: 'POST',
                            dataType: 'JSON',
                            data: JSON.stringify(data),
                            success: function (data) {
                                confirm("삭제 되었습니다.")
                                window.location.href = '/template.jsp?pageGroup=employee&page=list';
                            }
                        });
                    }else {
                        confirm("삭제 취소 되었습니다.")
                    }
                });






                // 수정 jsp 로 가게 함
                $("#mod").on('click', function () {

                    window.location.href = 'template.jsp?pageGroup=employee&page=update&empId=' + empId;

                });

            },
            error: function (err) {
                console.log(err.responseText);
            }
        });
    });
</script>

</body>
</html>



<%--// for (let key in data) {--%>
<%--//     // $('[name="' + key + '"]').val(item[key]);--%>
<%--//     $("#"+key).val(item[key]);--%>
<%--// }--%>

<%--let str = "";--%>
<%--for (let key in data) {--%>
<%--    str += `<p>직원 ${key}: ${data[key]}</p>`--%>
<%--}--%>
<%--employeeDetailDiv.innerHTML = str;--%>

