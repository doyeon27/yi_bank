<%--<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>직원 리스트</title>--%>
<%--    <script src="https://code.jquery.com/jquery-latest.min.js"></script>--%>

<%--    <style>--%>

<%--        body {--%>
<%--            margin: 0; /* body의 기본 margin 제거 */--%>
<%--        }--%>

<%--        #tableContainer {--%>
<%--            text-align: center; /* 표를 가운데로 정렬 */--%>
<%--            margin: 20px auto; /* 표를 가운데로 정렬하고 메뉴바와의 간격 조절 */--%>
<%--        }--%>

<%--        /* 테이블 스타일링을 위한 CSS */--%>
<%--        #employeeTable {--%>
<%--            border-collapse: collapse;--%>
<%--            width: 80%; /* 전체 테이블의 너비 조정 */--%>
<%--            margin: 0 auto; /* 표를 가운데로 정렬 */--%>
<%--        }--%>

<%--        #employeeTable th,--%>
<%--        #employeeTable td {--%>
<%--            border: 1px solid #ddd;--%>
<%--            padding: 6px;--%>
<%--            text-align: center;--%>
<%--        }--%>

<%--        #employeeTable th {--%>
<%--            background-color: #f2f2f2;--%>
<%--        }--%>

<%--        #employeeList tr:hover {--%>
<%--            background-color: #e5e5e5;--%>
<%--        }--%>

<%--        #h1 {--%>
<%--            text-align: center;--%>
<%--        }--%>

<%--        p {--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>

<%--<body>--%>
<%--<div id="employee">--%>
<%--    <h1 id="h1">직원 정보</h1><br>--%>
<%--    <p> - 부서 번호는 1~2 까지만 있음</p>--%>
<%--    <p id="totalEmployees">현재 직원 수 : 값을 가져오는 중 입니다.</p>--%>
<%--    <p> - 직원 상세정보 확인은 클릭하시면 됩니다</p>--%>
<%--    <p>이름으로 검색 : <input type="text" name="search" id="search"></p>--%>

<%--    <table id="employeeTable">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>코드</th>--%>
<%--            <th>이름</th>--%>
<%--            <th>직급</th>--%>
<%--            <th>권한</th>--%>
<%--            <th>급여</th>--%>
<%--            <th>전화번호</th>--%>
<%--            <th>ID</th>--%>
<%--            <th>부서 번호</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody id="employeeList">--%>
<%--        <!-- 여기에 직원 정보가 동적으로 추가됩니다 -->--%>
<%--        </tbody>--%>
<%--    </table>--%>
<%--</div>--%>

<%--<script>--%>
<%--    $(document).ready(function () {--%>
<%--        $.ajax({--%>
<%--            url: "/main/employeeList.do",--%>
<%--            type: 'POST',--%>
<%--            dataType: 'json',--%>
<%--            success: function (data) {--%>
<%--                let userList = $('#employeeList');--%>

<%--                if (data && data.length > 0) {--%>

<%--                    $('#employeeList').on('click', 'tr', function () {--%>

<%--                        let empId = $(this).find('td:eq(6)').text();--%>

<%--                        let redirectUrl = 'template.jsp?pageGroup=employee&page=detail&empId=' + empId;--%>
<%--                        window.location.href = redirectUrl;--%>
<%--                    });--%>


<%--                    data.forEach(function (e) {--%>
<%--                        let listItem = `--%>
<%--                            <tr>--%>
<%--                                <td>${e.empCode}</td>--%>
<%--                                <td>${e.empName}</td>--%>
<%--                                &lt;%&ndash;<td><a href="?pageGroup=employee&page=detail&empName=${e.empName}">${e.empName}</a></td>&ndash;%&gt;--%>
<%--                                <td>${e.empTitle}</td>--%>
<%--                                <td>${e.empAuth}</td>--%>
<%--                                <td>${e.empSalary}</td>--%>
<%--                                <td>${e.empTel}</td>--%>
<%--                                <td>${e.empId}</td>--%>
<%--                                <td>${e.deptNo}</td>--%>
<%--                                <!-- 다른 정보는 이와 같이 추가 가능합니다 -->--%>
<%--                            </tr>--%>
<%--                        `;--%>
<%--                        userList.append(listItem);--%>
<%--                    });--%>
<%--                    // 총 직원 수 업데이트--%>
<%--                    $('#totalEmployees').text(' - 현재 직원 수 : ' + data.length + " 입니다");--%>
<%--                } else {--%>
<%--                    userList.append('<tr><td colspan="8">직원 목록 자료가 없습니다.</td></tr>');--%>
<%--                    // asdf--%>
<%--                    $('#totalEmployees').text('현재 직원 수: 0');--%>
<%--                }--%>
<%--            },--%>
<%--            error: function () {--%>
<%--                $('#employeeList').append('<tr><td colspan="8">직원 목록 가져오기 실패</td></tr>');--%>
<%--                $('#totalEmployees').text('현재 직원 수: 0');--%>
<%--            }--%>
<%--        });--%>
<%--    })--%>


<%--    // 검색관련--%>
<%--    $("#search").on("input", function () {--%>
<%--        let keyword = $("#search").val();--%>
<%--        console.log(keyword);--%>
<%--        getdata(keyword);--%>


<%--    });--%>

<%--    function getdata(keyword) {--%>


<%--        $.ajax({--%>
<%--                url: "/main/employeeSearch.do?keyword" + keyword,--%>
<%--                type: 'POST',--%>
<%--                dataType: 'JSON',--%>
<%--                data: keyword,--%>
<%--                success: function (data) {--%>
<%--                    console.log(data)--%>
<%--                    let userList = $('#employeeList');--%>
<%--                    userList.empty();--%>

<%--                    data.forEach(function (e) {--%>
<%--                        let listItem = `--%>
<%--                            <tr>--%>
<%--                                <td>${e.empCode}</td>--%>
<%--                                <td>${e.empName}</td>--%>
<%--                                &lt;%&ndash;<td><a href="?pageGroup=employee&page=detail&empName=${e.empName}">${e.empName}</a></td>&ndash;%&gt;--%>
<%--                                <td>${e.empTitle}</td>--%>
<%--                                <td>${e.empAuth}</td>--%>
<%--                                <td>${e.empSalary}</td>--%>
<%--                                <td>${e.empTel}</td>--%>
<%--                                <td>${e.empId}</td>--%>
<%--                                <td>${e.deptNo}</td>--%>
<%--                            </tr>--%>
<%--                        `;--%>
<%--                        userList.append(listItem);--%>
<%--                    });--%>

<%--                },--%>
<%--            error: function (){--%>
<%--                    $('#employeeList').append('<tr><td colspan="8">직원 검색 실패</td></tr>')--%>
<%--            }--%>
<%--            }--%>
<%--        )--%>
<%--    }--%>

<%--</script>--%>


<%--</body>--%>
<%--</html>--%>




<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>직원 리스트</title>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <!-- 부트스트랩 CDN 추가 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>

        body {
            margin: 0;
            background-color: #f8f9fa;
        }

        #tableContainer {
            text-align: center;
            margin: 20px auto;
        }

        #employeeTable {
            border-collapse: collapse;
            width: 80%;
            margin: 0 auto;
            background-color: #ffffff;
            box-shadow: 0px 0px 10px 1px #dddddd;
        }

        #employeeTable th,
        #employeeTable td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        #employeeTable th {
            background-color: #f2f2f2;
        }

        #employeeList tr:hover {
            background-color: #e5e5e5;
        }

        #h1 {
            text-align: center;
        }

        p {
            text-align: center;
            margin-bottom: 15px;
        }

        #searchContainer {
            text-align: center;
            margin-bottom: 20px;
        }

        #search {
            width: 300px;
            margin-right: 10px;
            display: inline-block;
        }

    </style>
</head>

<body>
<div id="employee" class="container mt-5">
    <h1 id="h1" class="text-center mb-4">직원 정보</h1>
    <p class="text-center"> - 부서 번호는 1~2 까지만 있음</p>
    <p id="totalEmployees" class="text-center">현재 직원 수 : 값을 가져오는 중 입니다.</p>
    <p class="text-center"> - 직원 상세정보 확인은 해당 직원을 클릭하시면 됩니다</p>

    <div id="searchContainer">
        <input type="text" class="form-control" name="search" id="search" placeholder="직원 이름 으로 검색">
    </div>

    <table id="employeeTable" class="table table-bordered table-hover">
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
                    // 총 직원 수 업데이트
                    $('#totalEmployees').text(' - 현재 직원 수 : ' + data.length + "명 입니다");
                } else {
                    userList.append('<tr><td colspan="8">직원 목록 자료가 없습니다.</td></tr>');
                    $('#totalEmployees').text('현재 직원 수: 0');
                }
            },
            error: function () {
                $('#employeeList').append('<tr><td colspan="8">직원 목록 가져오기 실패</td></tr>');
                $('#totalEmployees').text('현재 직원 수: 0');
            }
        });
    })

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
        });
    }
</script>

</body>
</html>
