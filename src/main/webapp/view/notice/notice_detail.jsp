<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>
<%@ page import="kroryi.yi_bank.dto.Employee" %>
<!DOCTYPE html>
<html>
<head>
    <title>공지사항 상세 보기</title>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

<h1>공지사항 상세 정보</h1>

<div id="noticeDetail"></div>

<script>
    $(document).ready(function () {
        const urlParams = new URLSearchParams(window.location.search);
        const noticeNo = urlParams.get('no'); // 수정: 'no' 파라미터 사용

        $.ajax({
            url: "/main/noticeDetail.do",
            type: 'POST',
            dataType: 'json',
            data: {noticeNo: noticeNo},
            success: function (data) {
                const noticeDetailDiv = $('#noticeDetail');
                if (data) {
                    const noticeInfo = `<ul>
                        <li>글 번호 : ${data.no}</li>
                        <li>제목 : ${data.subject}</li>
                        <li>작성자 : ${data.writer}</li>
                        <li>작성일자 : ${data.writeDate}</li> <!-- 작성일자 추가 -->
                        <li>내용 : ${data.content}</li> <!-- 내용 추가 -->
                    </ul>`;
                    noticeDetailDiv.html(noticeInfo);
                } else {
                    noticeDetailDiv.html('해당 공지사항을 찾을 수 없습니다.');
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




