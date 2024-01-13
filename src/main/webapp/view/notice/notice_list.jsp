<%--<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>--%>
<%--&lt;%&ndash;<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib prefix="c" uri="jakarta.tags.core" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>&ndash;%&gt;--%>

<%--&lt;%&ndash;HTML/JavaScript 코드: AJAX를 사용하여 서버의 NoticeListHandler를 호출하고, &ndash;%&gt;--%>
<%--&lt;%&ndash;반환된 JSON 데이터를 받아와 HTML 페이지에 동적으로 표시합니다. 이를 통해 웹 페이지에 공지사항 리스트를 표시할 수 있습니다.&ndash;%&gt;--%>

<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Title</title>--%>
<%--    <script src="https://code.jquery.com/jquery-latest.min.js"></script>--%>
<%--    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>

<%--&lt;%&ndash;    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">&ndash;%&gt;--%>

<%--    <style>--%>
<%--        #h1_title{--%>
<%--            margin-top: -78px;--%>
<%--        }--%>

<%--        #listAddBtn{--%>
<%--            margin-top: -31px;--%>
<%--        }--%>
<%--        #notice {--%>
<%--            width: 816px;--%>
<%--            height: 500px;--%>
<%--            margin-left: 100px;--%>
<%--            margin-right: 150px;--%>
<%--            margin-top: 100px;--%>
<%--            float: left;--%>
<%--            /*border: solid 1px red;*/--%>
<%--        }--%>

<%--        #notice h2 {--%>
<%--            width: 100%;--%>
<%--            height: 50px;--%>
<%--        }--%>

<%--        #notice h2 span#noticeTitle {--%>
<%--            width: 200px;--%>
<%--            height: 50px;--%>
<%--            line-height: 50px;--%>
<%--            text-indent: 10px;--%>
<%--            border-bottom: 3px solid goldenrod;--%>
<%--        }--%>

<%--        #notice #noticeMng {--%>
<%--            width: 450px;--%>
<%--            margin-left: 200px;--%>
<%--            text-align: right;--%>
<%--        }--%>

<%--        #notice #noticeMng #fa_minus {--%>
<%--            margin: 0 20px;--%>
<%--        }--%>

<%--        #notice ul {--%>
<%--            margin-top: 66px;--%>
<%--        }--%>

<%--        /*수정한거*/--%>
<%--        #notice ul li {--%>
<%--            height: 73px;--%>
<%--            padding-top: 10px;--%>
<%--            border-bottom: 1px solid #ccc; /* 각 리스트 아이템에 회색 밑줄 추가 */--%>
<%--            padding-bottom: 5px; /* 밑줄과 텍스트 사이의 간격 조정 */--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--        }--%>

<%--        #notice span {--%>
<%--            display: block;--%>
<%--            float: left;--%>
<%--        }--%>

<%--        #notice span#no {--%>
<%--            width: 30px;--%>
<%--            text-align: center;--%>
<%--        }--%>

<%--        #noticeList span#subject {--%>
<%--            width: 340px;--%>
<%--        }--%>

<%--        #notice span#subject a {--%>
<%--            display: block;--%>
<%--        }--%>

<%--        #notice span#writer {--%>
<%--            width: 100px;--%>
<%--            text-align: center;--%>
<%--        }--%>

<%--        #notice span#date {--%>
<%--            width: 187px;--%>
<%--            text-align: right;--%>
<%--        }--%>

<%--        #notice title {--%>
<%--            /*border: 1px solid red;*/--%>
<%--        }--%>

<%--        #noticeList.list-group{--%>
<%--            padding-top: 0px;--%>
<%--            padding-bottom: 30px;--%>
<%--        }--%>

<%--    </style>--%>
<%--</head>--%>

<%--<body>--%>
<%--&lt;%&ndash;class="container mt-5 border"&ndash;%&gt;--%>
<%--<div id="notice" >--%>
<%--&lt;%&ndash;<div id="notice">&ndash;%&gt;--%>
<%--    <h1 id="h1_title"><span id="noticeTilte">공지사항</span></h1>--%>
<%--    <ul id="noticeList" class="list-group">--%>
<%--&lt;%&ndash;        list-group&ndash;%&gt;--%>
<%--    </ul>--%>
<%--    <button id="listAddBtn" class="btn btn-info">추가</button>--%>
<%--</div>--%>


<%--<script>--%>
<%--    // AJax 기본 베이스 코드--%>
<%--    $(document).ready(function () {--%>
<%--        $.ajax({--%>
<%--            url: "/main/notice.do",--%>
<%--            type: 'GET',--%>
<%--            dataType: 'json',--%>
<%--            success: function (data) {--%>
<%--                if (data && data.length > 0) {--%>
<%--                    let userList = $('#noticeList');--%>
<%--                    data.forEach(function (item) {--%>
<%--                        let listItem = `<li>--%>
<%--                            <span id="no" class="justify-content-between align-items-center mr-auto"> ${item.no} </span>--%>
<%--                            <span id="subject" ><a href='?pageGroup=notice&page=detail&no=${item.no}'>${item.subject}</a></span>--%>
<%--                            <span id="writer" class="badge badge-primary badge-pill"> ${item.writer} </span>--%>
<%--                            <span id="date" class="badge badge-secondary badge-pill float-rigtht"> ${item.writeDate} </span>--%>
<%--                            <button id="updbtn" class="badge badge-pill badge-success mx-1"> 수정 </button>--%>
<%--                            <button id="delbtn" class="badge badge-pill badge-danger mx-1"> 삭제 </button>--%>
<%--                            </li>--%>
<%--                        `;--%>

<%--                        userList.append(listItem);--%>
<%--                    })--%>
<%--                } else {--%>
<%--                    $('#noticeList').append('<li>게시물 자료가 없습니다.</li>')--%>
<%--                }--%>
<%--            },--%>
<%--            error: function () {--%>
<%--                $('#noticeList').append('<li>목록 가져오기 실패</li>')--%>
<%--            }--%>
<%--        })--%>

<%--        $(document).ready(function () {--%>

<%--            $('#noticeList').on('click', '#delbtn', function () {--%>
<%--                let noticeNo = $(this).closest('li').find('#no').text();--%>
<%--                console.log(noticeNo);--%>

<%--                let confirmed = confirm("삭제 하시겠습니까?");--%>
<%--                if (confirmed){--%>
<%--                    // 서버에 삭제 요청 보내기--%>
<%--                    $.ajax({--%>
<%--                        url: "/main/deleteNotice.do",--%>
<%--                        type: 'POST',--%>
<%--                        data: {noticeNo: noticeNo},--%>
<%--                        success: function (response) {--%>
<%--                            if (response === 'success') {--%>
<%--                                $this.closest('li').remove();--%>
<%--                            } else {--%>
<%--                                alert('삭제 실패');--%>
<%--                            }--%>
<%--                        },--%>
<%--                        error: function () {--%>
<%--                            alert('삭제 요청 실패');--%>
<%--                        }--%>
<%--                    });--%>
<%--                } else {--%>
<%--                    alert("취소 되었습니다.")--%>
<%--                }--%>

<%--                let $this = $(this);--%>
<%--            });--%>
<%--        });--%>

<%--        // 수정--%>
<%--        $(document).ready(function () {--%>
<%--            $('#noticeList').on('click', '#updbtn', function () {--%>

<%--                let noticeNo = $(this).closest('li').find('#no').text();--%>

<%--                console.log(noticeNo);--%>
<%--                let confirmed = confirm("수정 하시겠습니까?");--%>
<%--                if (confirmed){--%>
<%--                    window.location.href = '/view/notice/notice_update.jsp?noticeNo='+noticeNo;--%>
<%--                    $.ajax({--%>
<%--                        url: "/main/getNotice.do",--%>
<%--                        type: 'POST',--%>
<%--                        data: {noticeNo: noticeNo},--%>
<%--                        success: function (response) {--%>
<%--                            if (response === 'success') {--%>

<%--                            } else {--%>
<%--                            }--%>
<%--                        },--%>
<%--                        error: function () {--%>
<%--                        }--%>
<%--                    });--%>
<%--                }else {--%>
<%--                    alert("취소 되었습니다.")--%>
<%--                    // window.location.href = "/main/main.do";--%>
<%--                }--%>
<%--            });--%>
<%--        });--%>


<%--        // 추가 버튼을 누르면 notice_add.jsp 로 가게 해주는 코드--%>
<%--        $('#listAddBtn').on('click', function () {--%>
<%--            window.location.href = '/view/notice/notice_add.jsp';--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>


<%--</body>--%>
<%--</html>--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div id="notice" class="container mt-5">
    <h1 id="h1" class="text-center mb-4">공지사항</h1>
    <ul id="noticeList" class="list-group">
        <!-- 여기에 공지사항이 동적으로 추가됩니다 -->
    </ul>
    <button id="listAddBtn" class="btn btn-info">추가</button>
</div>

<script>
    $(document).ready(function () {
        $.ajax({
            url: "/main/notice.do",
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                if (data && data.length > 0) {
                    let userList = $('#noticeList');
                    data.forEach(function (item) {
                        let listItem = `<li class="list-group-item d-flex justify-content-between align-items-center">
                            <span id="no" class="badge badge-secondary badge-pill text-center"> ${item.no} </span>
                            <span id="subject" class="flex-fill text-center"><a href='?pageGroup=notice&page=detail&no=${item.no}'>${item.subject}</a></span>
                            <span id="writer" class="badge badge-primary badge-pill text-center"> ${item.writer} </span>
                            <span id="date" class="badge badge-secondary badge-pill text-center"> ${item.writeDate} </span>
                            <button id="updbtn" class="btn btn-success mx-1"> 수정 </button>
                            <button id="delbtn" class="btn btn-danger mx-1"> 삭제 </button>
                            </li>`;

                        userList.append(listItem);
                    });
                } else {
                    $('#noticeList').append('<li class="list-group-item text-center">게시물 자료가 없습니다.</li>');
                }
            },
            error: function () {
                $('#noticeList').append('<li class="list-group-item text-center">목록 가져오기 실패</li>');
            }
        });

        $(document).ready(function () {
            $('#noticeList').on('click', '#delbtn', function () {
                let noticeNo = $(this).closest('li').find('#no').text();
                let confirmed = confirm("삭제 하시겠습니까?");
                if (confirmed) {
                    $.ajax({
                        url: "/main/deleteNotice.do",
                        type: 'POST',
                        data: {noticeNo: noticeNo},
                        success: function (response) {
                            if (response === 'success') {
                                $(this).closest('li').remove();
                            } else {
                                alert('삭제 실패');
                            }
                        },
                        error: function () {
                            alert('삭제 요청 실패');
                        }
                    });
                } else {
                    alert("취소 되었습니다.");
                }
            });
        });

        $(document).ready(function () {
            $('#noticeList').on('click', '#updbtn', function () {
                let noticeNo = $(this).closest('li').find('#no').text();
                let confirmed = confirm("수정 하시겠습니까?");
                if (confirmed) {
                    window.location.href = '/view/notice/notice_update.jsp?noticeNo=' + noticeNo;
                    $.ajax({
                        url: "/main/getNotice.do",
                        type: 'POST',
                        data: {noticeNo: noticeNo},
                        success: function (response) {
                            if (response === 'success') {
                            } else {
                            }
                        },
                        error: function () {
                        }
                    });
                } else {
                    alert("취소 되었습니다.");
                }
            });
        });

        $('#listAddBtn').on('click', function () {
            window.location.href = '/view/notice/notice_add.jsp';
            // window.location.href = 'template.jsp?pageGroup=notice&page=add&noticeNo=' + noticeNo;

        });
    });
</script>

</body>
</html>
