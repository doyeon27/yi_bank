<%--<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>--%>
<%--<%@ page import="kroryi.yi_bank.dto.Employee" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>공지사항 상세 보기</title>--%>
<%--    <script src="https://code.jquery.com/jquery-latest.min.js"></script>--%>
<%--</head>--%>
<%--<body>--%>

<%--<h1>공지사항 상세 정보</h1>--%>

<%--<div id="noticeDetail"></div>--%>

<%--<script>--%>
<%--    $(document).ready(function () {--%>
<%--        const urlParams = new URLSearchParams(window.location.search);--%>
<%--        const noticeNo = urlParams.get('no'); // 수정: 'no' 파라미터 사용--%>

<%--        $.ajax({--%>
<%--            url: "/main/noticeDetail.do",--%>
<%--            type: 'POST',--%>
<%--            dataType: 'json',--%>
<%--            data: {noticeNo: noticeNo},--%>
<%--            success: function (data) {--%>
<%--                const noticeDetailDiv = $('#noticeDetail');--%>
<%--                if (data) {--%>
<%--                    const noticeInfo = `<ul>--%>
<%--                        <li>글 번호 : ${data.no}</li>--%>
<%--                        <li>제목 : ${data.subject}</li>--%>
<%--                        <li>작성자 : ${data.writer}</li>--%>
<%--                        <li>작성일자 : ${data.writeDate}</li> <!-- 작성일자 추가 -->--%>
<%--                        <li>내용 : ${data.content}</li> <!-- 내용 추가 -->--%>
<%--                    </ul>`;--%>
<%--                    noticeDetailDiv.html(noticeInfo);--%>
<%--                } else {--%>
<%--                    noticeDetailDiv.html('해당 공지사항을 찾을 수 없습니다.');--%>
<%--                }--%>
<%--            },--%>
<%--            error: function (err) {--%>
<%--                console.log(err.responseText);--%>
<%--            }--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>

<%--</body>--%>
<%--</html>--%>




<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>
<%@ page import="kroryi.yi_bank.dto.Employee" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>공지사항 상세 보기</title>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding: -1px;
            margin-right: 20px; /* 오른쪽 마진 추가 */
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        #noticeDetail {
            max-width: 600px;
            margin: 0 auto;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
            display: inline-block;
        }

        li.list-group-item span:first-child {
            width: 100px;
            color: #33c0c9;
        }
    </style>
</head>
<body>

<h1>공지사항 상세 정보</h1>

<div id="noticeDetail"></div>

<script>
    $(document).ready(function () {
        const urlParams = new URLSearchParams(window.location.search);
        const noticeNo = urlParams.get('no');

        $.ajax({
            url: "/main/noticeDetail.do",
            type: 'POST',
            dataType: 'json',
            data: {noticeNo: noticeNo},
            success: function (data) {
                const noticeDetailDiv = $('#noticeDetail');
                if (data) {
                    const noticeInfo = `<ul class="list-group">
                        <li class="list-group-item"><span>글 번호:</span> <span>${data.no}</span></li>
                        <li class="list-group-item"><span>제목:</span> <span>${data.subject}</span></li>
                        <li class="list-group-item"><span>작성자:</span> <span>${data.writer}</span></li>
                        <li class="list-group-item"><span>작성일자:</span> <span>${data.writeDate}</span></li>
                        <li class="list-group-item"><span>내용:</span> <span>${data.content}</span></li>
                    </ul>`;
                    noticeDetailDiv.html(noticeInfo);
                } else {
                    noticeDetailDiv.html('<p class="text-danger">해당 공지사항을 찾을 수 없습니다.</p>');
                }
            },
            error: function (err) {
                console.log(err.responseText);
            }
        });
    });
</script>

</body>
</html>













