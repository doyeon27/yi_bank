<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="template.jsp">
        <div class="sidebar-brand-icon rotate-n-15">
<%--            <i class="fas fa-sad-cry"></i> <!-- 옆에건 아이콘 인듯 -->--%>
    <i class="fa fa-light fa-hospital"></i>

        </div>
        <div class="sidebar-brand-text mx-3">도연 내과<sup>2</sup></div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="index.html">
             <i class="fas fa-fw fa-tachometer-alt"></i>
<%--            <i class="fa-light fa-hospital"></i>--%>
            <span>Dashboard</span></a>
<%--        로그인 관련--%>
        <%
            String userid = (String) session.getAttribute("userid");
            if (userid != null) {
        %>
        <span style="margin-left: 30px"> <%= userid%> 님 환영합니다!</span><br>
        <button id="logout" href="/logout.do" class="btn btn-outline-secondary" style="margin-left: 60px">로그아웃</button>
        </a>

        <%
        } else {
        %>
        <span style="margin-left: 30px"> 로그인을 하세요 </span></a>


        <%

            }
        %>
    </li>

    <!-- Divider -->
<%--    메뉴바에 밑에 줄 그인거?--%>
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Interface
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
           aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-cog"></i>
            <span>공지사항</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">공지사항 관리 : </h6>
                <a class="collapse-item" href="template.jsp?pageGroup=notice&page=list">공지사항 목록</a>
<%--                <a class="collapse-item" href="cards.html">Cards</a>--%>
            </div>
        </div>
    </li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
           aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-fw fa-wrench"></i>
            <span>직원관리</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
             data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">사원 관리 : </h6>
                <a class="collapse-item" href="template.jsp?pageGroup=employee&page=list">사원 목록</a>
                <a class="collapse-item" href="template.jsp?pageGroup=employee&page=add">사원 추가</a>
<%--                <a class="collapse-item" href="utilities-animation.html">Animations</a>--%>
<%--                <a class="collapse-item" href="utilities-other.html">Other</a>--%>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Addons
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
           aria-expanded="true" aria-controls="collapsePages">
            <i class="fas fa-fw fa-folder"></i>
            <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Login Screens:</h6>
                <a class="collapse-item" href="login.html">Login</a>
                <a class="collapse-item" href="register.html">Register</a>
                <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">Other Pages:</h6>
                <a class="collapse-item" href="404.html">404 Page</a>
                <a class="collapse-item" href="blank.html">Blank Page</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Charts -->
    <li class="nav-item">
        <a class="nav-link" href="charts.html">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Charts</span></a>
    </li>

    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="tables.html">
            <i class="fas fa-fw fa-table"></i>
            <span>Tables</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

    <!-- Sidebar Message -->
    <div class="sidebar-card d-none d-lg-flex">
<%--        <img class="sidebar-card-illustration mb-2" src="img/두목님.png" alt="...">--%>
        <p class="text-center mb-2"><strong>SB Admin Pro</strong> is packed with premium features, components, and more!
        </p>
        <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a>
    </div>

</ul>
<!-- End of Sidebar -->
