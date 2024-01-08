<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>공지사항 추가</title>
    <!-- jQuery 라이브러리 추가 -->
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <!-- 여기에 필요한 CSS 스타일과 head 내용 추가 -->
    <!-- ... -->
</head>
<body>
<!-- 공지사항 추가를 위한 폼 추가 -->
<form id="addNoticeForm">
    <label for="subjectInput">제목:</label>
    <input type="text" id="subjectInput" name="subject"><br><br>

    <label for="writerInput">작성자:</label>
    <input type="text" id="writerInput" name="writer"><br><br>

    <label for="contentInput">내용:</label>
    <textarea id="contentInput" name="content"></textarea><br><br>

    <button id="addNoticeBtn" type="button">공지사항 추가</button>
</form>

<!-- 기존 HTML 내용 -->
<!-- ... -->

<!-- 자바스크립트 코드 -->
<script>
    $(document).ready(function () {
        $('#addNoticeBtn').on('click', function (e) {
            e.preventDefault();

            // 입력된 값 가져오기
            let subject = $('#subjectInput').val();
            let writer = $('#writerInput').val();
            let content = $('#contentInput').val();

            // 데이터 생성
            let data = {
                "subject": subject,
                "writer": writer,
                "writeDate": new Date().toISOString(), // 현재 날짜를 ISO 문자열로 전달
                "content": content
            };

            // AJAX 요청 보내기
            $.ajax({
                url: "/main/addNotice.do",
                type: 'POST',
                contentType: 'application/json',
                dataType: 'json',
                data: JSON.stringify(data),
                success: function (response) {
                    // 성공적으로 추가되었을 때의 처리
                    alert(response); // 성공 메시지 알림
                    // 추가한 후에 공지사항 리스트 갱신하는 등의 작업 수행
                    // ...
                    window.location.href = "/main/main.do";
                },
                error: function (xhr, status, error) {
                    // 실패했을 때의 처리
                    alert('공지사항 추가 실패');
                    console.error(error); // 에러 메시지 콘솔에 출력
                }
            });
        });
    });
</script>
</body>
</html>

