<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>직원 리스트</title>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>

    <style>
        /* 테이블 컨테이너 스타일링을 위한 CSS */
        #tableContainer {
            text-align: left; /* 표를 왼쪽으로 정렬 */
        }

        /* 테이블 스타일링을 위한 CSS */
        #employeeTable {
            border-collapse: collapse;
            width: 80%; /* 전체 테이블의 너비 조정 */
            /*margin: 0 auto; !* 가운데 정렬을 위해 추가 *!*/
        }

        #employeeTable th, #employeeTable td {
            border: 1px solid #ddd;
            padding: 6px; /* 셀의 패딩을 조정하여 테이블 크기를 줄임 */
            text-align: center;
        }

        #employeeTable th {
            background-color: #f2f2f2;
        }

        /*#h1 {*/
        /*    margin-left: 50px;*/
        /*    margin-bottom: 50px;*/
        /*    !*margin-top: 50px;*!*/
        /*}*/

        #employeeList tr:hover {
            background-color: #e5e5e5;
        }

    </style>
</head>

<body>
<div id="employee">
    <h1 id="h1">직원 정보</h1><br>
    <p> - 부서 번호는 1~2 까지만 있음</p>
    <p id="totalEmployees">현재 직원 수 : 값을 가져오는 중 입니다.</p>
    <p> - 사원 상세정보 확인은 클릭하시면 됩니다</p>
    <p>검색 : <input type="text" name="search" id="search"></p>

    <table id="employeeTable">
        <thead>
        <tr>
            <th>코드</th>
            <th>이름</th>
            <th>직급</th>
            <th>권한</th>
            <th>급여</th>
            <th>전화번호</th>
            <th>ID</th>
            <th>부서 번호</th>
        </tr>
        </thead>
        <tbody id="employeeList">
        <!-- 여기에 직원 정보가 동적으로 추가됩니다 -->
        </tbody>
    </table>
</div>

<script>
    $(document).ready(function () {
        $.ajax({
            url: "/main/employeeList.do",
            type: 'POST',
            dataType: 'json',
            success: function (data) {
                let userList = $('#employeeList');

                if (data && data.length > 0) {

                    $('#employeeList').on('click', 'tr', function () {

                        let empId = $(this).find('td:eq(6)').text();

                        let redirectUrl = 'template.jsp?pageGroup=employee&page=detail&empId=' + empId;
                        window.location.href = redirectUrl;
                    });


                    data.forEach(function (e) {
                        let listItem = `
                            <tr>
                                <td>${e.empCode}</td>
                                <td>${e.empName}</td>
                                <%--<td><a href="?pageGroup=employee&page=detail&empName=${e.empName}">${e.empName}</a></td>--%>
                                <td>${e.empTitle}</td>
                                <td>${e.empAuth}</td>
                                <td>${e.empSalary}</td>
                                <td>${e.empTel}</td>
                                <td>${e.empId}</td>
                                <td>${e.deptNo}</td>
                                <!-- 다른 정보는 이와 같이 추가 가능합니다 -->
                            </tr>
                        `;
                        userList.append(listItem);
                    });
                    // 총 직원 수 업데이트
                    $('#totalEmployees').text(' - 현재 직원 수 : ' + data.length + " 입니다");
                } else {
                    userList.append('<tr><td colspan="8">직원 목록 자료가 없습니다.</td></tr>');
                    // asdf
                    $('#totalEmployees').text('현재 직원 수: 0');
                }
            },
            error: function () {
                $('#employeeList').append('<tr><td colspan="8">직원 목록 가져오기 실패</td></tr>');
                $('#totalEmployees').text('현재 직원 수: 0');
            }
        });


    })


    // 검색관련
    $("#search").on("input", function () {
        let keyword = $("#search").val();
        console.log(keyword);
        getdata(keyword);


    });

    function getdata(keyword) {


        $.ajax({
                url: "/main/employeeSearch.do?keyword" + keyword,
                type: 'POST',
                dataType: 'JSON',
                data: keyword,
                success: function (data) {
                    console.log(data)
                    let userList = $('#employeeList');
                    userList.empty();

                    data.forEach(function (e) {
                        let listItem = `
                            <tr>
                                <td>${e.empCode}</td>
                                <td>${e.empName}</td>
                                <%--<td><a href="?pageGroup=employee&page=detail&empName=${e.empName}">${e.empName}</a></td>--%>
                                <td>${e.empTitle}</td>
                                <td>${e.empAuth}</td>
                                <td>${e.empSalary}</td>
                                <td>${e.empTel}</td>
                                <td>${e.empId}</td>
                                <td>${e.deptNo}</td>
                            </tr>
                        `;
                        userList.append(listItem);
                    });

                },
            error: function (){
                    $('#employeeList').append('<tr><td colspan="8">직원 검색 실패</td></tr>')
            }
            }
        )
    }

</script>


</body>
</html>

