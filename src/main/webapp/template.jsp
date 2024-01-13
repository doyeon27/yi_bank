<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    pageContext.setAttribute("pageGroup", request.getParameter("pageGroup"));
    pageContext.setAttribute("page", request.getParameter("page"));
    pageContext.setAttribute("no", request.getParameter("no"));
    pageContext.setAttribute("empCode", request.getParameter("empId"));
%>

<html lang="ko">
<head>
    <title>관리자 페이지</title>

    <jsp:include page="${pageContext.request.contextPath}/view/common/common.jsp"/>
</head>

<%--관리자 페이지에 나오게 할것들?--%>
<body class="page-top">

<div id="wrapper">
    <jsp:include page="${pageContext.request.contextPath}/view/common/leftside.jsp"/>
    <div id="content-wrapper" class="d-flex flex-column">
        <div class="content">
            <c:choose>
                <c:when test="${not empty pageGroup and pageGroup eq 'notice'}">
                    <c:choose>
                        <c:when test="${not empty page and page eq 'list'}">
                            <jsp:include page="/view/${pageGroup}/${pageGroup}_${page}.jsp"/>
                        </c:when>
                        <c:when test="${not empty page and page eq 'detail'}">
                            <jsp:include page="/view/${pageGroup}/${pageGroup}_${page}.jsp">
                                <jsp:param name="no" value="${no}"/>
                            </jsp:include>
                        </c:when>
                        <c:when test="${not empty page and page eq 'update'}">
                            <jsp:include page="/view/${pageGroup}/${pageGroup}_${page}.jsp">
                                <jsp:param name="no" value="${no}"/>
                            </jsp:include>
                        </c:when>
                        <c:when test="${not empty page and page eq 'delete'}">
                            <jsp:include page="/view/${pageGroup}/${pageGroup}_${page}.jsp">
                                <jsp:param name="no" value="${no}"/>
                            </jsp:include>
                        </c:when>

                        <c:otherwise>
                            <jsp:include page="/view/${pageGroup}/${pageGroup}_list.jsp"/>
                        </c:otherwise>
                    </c:choose>
                </c:when>


                <c:when test="${not empty pageGroup and pageGroup eq 'employee'}">
                    <c:choose>
                        <c:when test="${not empty page and page eq 'list'}">
                            <jsp:include page="/view/${pageGroup}/${pageGroup}_${page}.jsp"/>
                        </c:when>

                        <c:when test="${not empty page and page eq 'detail'}">
                            <jsp:include page="/view/${pageGroup}/${pageGroup}_${page}.jsp">
                                <jsp:param name="empId" value="${empId}"/>
                            </jsp:include>
                        </c:when>

                        <c:when test="${not empty page and page eq 'update'}">
                            <jsp:include page="/view/${pageGroup}/${pageGroup}_${page}.jsp">
                                <jsp:param name="empId" value="${empId}"/>
                            </jsp:include>
                        </c:when>

                        <c:when test="${not empty page and page eq 'add'}">
                            <jsp:include page="/view/${pageGroup}/${pageGroup}_${page}.jsp"/>
                        </c:when>



                    </c:choose>


                </c:when>



<%--                <c:when test="${not empty pageGroup and pageGroup eq 'customer'}">--%>

<%--                </c:when>--%>



                <c:otherwise>
<%--                    <jsp:include page="index.jsp"/>--%>
                </c:otherwise>

            </c:choose>

        </div>


    </div>


</div>

<p><a href="http://localhost:8090/main/main.do">home.jsp 바로가기</a></p>



<jsp:include page="${pageContext.request.contextPath}/view/common/footer.jsp"/>

<%--밑에 코드가 잇어야 부트스트랩 같은게 먹음--%>
<script src="/jquery/jquery.min.js"></script>
<script src="/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/jquery-easing/jquery.easing.min.js"></script>
<script src="/js/sb-admin-2.js"></script>


</body>
</html>
