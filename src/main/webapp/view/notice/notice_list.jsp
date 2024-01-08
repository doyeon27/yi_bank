<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<%--<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>--%>

<%--HTML/JavaScript 코드: AJAX를 사용하여 서버의 NoticeListHandler를 호출하고, --%>
<%--반환된 JSON 데이터를 받아와 HTML 페이지에 동적으로 표시합니다. 이를 통해 웹 페이지에 공지사항 리스트를 표시할 수 있습니다.--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>

    <style>
        #notice {
            width: 816px;
            height: 500px;
            margin-left: 100px;
            margin-right: 150px;
            margin-top: 100px;
            float: left;
            /*border: solid 1px red;*/
        }

        #notice h2 {
            width: 100%;
            height: 50px;
        }

        #notice h2 span#noticeTitle {
            width: 200px;
            height: 50px;
            line-height: 50px;
            text-indent: 10px;
            border-bottom: 3px solid goldenrod;
        }

        #notice #noticeMng {
            width: 450px;
            margin-left: 200px;
            text-align: right;
        }

        #notice #noticeMng #fa_minus {
            margin: 0 20px;
        }

        #notice ul {
            margin-top: 10px;
        }

        /*수정한거*/
        #notice ul li {
            height: 30px;
            padding-top: 30px;
            border-bottom: 1px solid #ccc; /* 각 리스트 아이템에 회색 밑줄 추가 */
            padding-bottom: 5px; /* 밑줄과 텍스트 사이의 간격 조정 */
        }

        #notice span {
            display: block;
            float: left;
        }

        #notice span#no {
            width: 30px;
            text-align: center;
        }

        #notice span#subject {
            width: 366px;
        }

        #notice span#subject a {
            display: block;
        }

        #notice span#writer {
            width: 100px;
            text-align: center;
        }

        #notice span#date {
            width: 187px;
            text-align: right;
        }

        /*#listAddBtn {*/
        /*    clear: both; !* 추가된 버튼 아래로 내려가도록 *!*/
        /*    margin-top: 20px;*/
        /*    position: absolute;*/
        /*    bottom: 50px;*/
        /*}*/

        /*#listAddBtn button {*/
        /*    display: block; !* 블록 요소로 설정해서 세로 정렬 되도록 *!*/
        /*    float: left;*/
        /*}*/

    </style>
</head>

<body>
<div id="notice">
    <h1>공지사항</h1>
    <ul id="noticeList">

    </ul>




    <button id="listAddBtn">추가</button>
</div>


<script>



    // AJax 기본 베이스 코드
    $(document).ready(function () {
        $.ajax({
            url: "/main/notice.do",
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                if (data && data.length > 0) {
                    let userList = $('#noticeList');
                    data.forEach(function (item) {
                        let listItem = `<li>
                            <span id="no"> ${item.no} </span>
                            <span id="subject"> ${item.subject} </span>
                            <span id="writer"> ${item.writer} </span>
                            <span id="date"> ${item.writeDate} </span>
                            <button id="updbtn"> 수정 </button>
                            <button id="delbtn"> 삭제 </button>
                            </li>
                        `;

                        userList.append(listItem);
                    })
                } else {
                    $('#noticeList').append('<li>게시물 자료가 없습니다.</li>')
                }
            },
            error: function () {
                $('#noticeList').append('<li>목록 가져오기 실패</li>')
            }
        })

        $(document).ready(function () {

            $('#noticeList').on('click', '#delbtn', function () {
                let noticeNo = $(this).closest('li').find('#no').text();
                console.log(noticeNo);

                let confirmed = confirm("삭제 하시겠습니까?");
                if (confirmed){
                    // 서버에 삭제 요청 보내기
                    $.ajax({
                        url: "/main/deleteNotice.do",
                        type: 'POST',
                        data: {noticeNo: noticeNo},
                        success: function (response) {
                            if (response === 'success') {
                                $this.closest('li').remove();
                            } else {
                                alert('삭제 실패');
                            }
                        },
                        error: function () {
                            alert('삭제 요청 실패');
                        }
                    });
                } else {
                    alert("취소 되었습니다.")
                }

                let $this = $(this);
            });
        });

        // 수정
        $(document).ready(function () {
            $('#noticeList').on('click', '#updbtn', function () {

                let noticeNo = $(this).closest('li').find('#no').text();

                window.location.href = '/view/notice/notice_update.jsp?noticeNo='+noticeNo;

                console.log(noticeNo);
                let confirmed = confirm("수정 하시겠습니까?");
                if (confirmed){
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
                }else {
                    alert("취소 되었습니다.")
                    window.location.href = "/main/main.do";
                }
            });
        });





        // 추가 버튼을 누르면 notice_add.jsp 로 가게 해주는 코드
        $('#listAddBtn').on('click', function () {
            window.location.href = '/view/notice/notice_add.jsp';
        });
    });
</script>


</body>
</html>