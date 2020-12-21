<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/16
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- 品牌 Logo -->
    <a href="${PATH}/static/index3.html" class="brand-link">
        <img src="${PATH}/static/dist/img/AdminLTELogo.png"
             alt="AdminLTE Logo"
             class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- 侧边栏用户面板（可选） -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="${PATH}/static/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="用户头像">
            </div>
            <div class="info">
                <a href="#" class="d-block">Alexander Pierce</a>
            </div>
        </div>

        <!-- 侧边栏菜单 -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- 使用 .nav-icon 类添加图标，
                     或使用 font-awesome 或其他任何图标字体库 -->
                <%--学校用户可见列表--%>
                <c:if test="${sessionScope.loginUser!=null&&sessionScope.loginUser.roleId==2}">
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            款式管理
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>寒衣列表</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>款式管理</p>
                            </a>
                        </li>
                    </ul>
                </li>
                    <li class="nav-item">
                        <a href="${pageContext.request.contextPath}/user/batch" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>批次设置</p>
                        </a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.loginUser!=null&&sessionScope.loginUser.roleId==1}">
                    <%--学生可见列表--%>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>查看寒衣</p>
                        </a>
                    </li>
                </c:if>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
