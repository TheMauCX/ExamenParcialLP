<%-- 
    Document   : index
    Created on : 6 jun 2024, 7:18:27
    Author     : Docente
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="true" %>
<%
    response.setHeader("Pragma", "no-cache");
    response.addHeader("Cache-Control", "must-revalidate");
    response.addHeader("Cache-Control", "no-cache");
    response.addHeader("Cache-Control", "no-store");
    response.setDateHeader("Expires", 0);
    String user = "";
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("username") == null) {
%>
<jsp:forward page="index.jsp">
    <jsp:param name="error" value="Ud. debe autenticarse...!"/>
</jsp:forward>
<%
} else {
    user = (String) sesion.getAttribute("username");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon" href="assets/images/pagina.png" type="image/x-icon">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="assets/css/style.css"/>

    </head>
    <body>
        <!-- start: Sidebar -->
        <div class="sidebar position-fixed top-0 bottom-0 bg-white border-end">
            <div class="d-flex align-items-center p-3">
                <a href="#" class="sidebar-logo text-uppercase fw-bold text-decoration-none text-indigo fs-4">Foxy</a>
                <i class="sidebar-toggle ri-arrow-left-circle-line ms-auto fs-5 d-none d-md-block"></i>
            </div>
            <ul class="sidebar-menu p-3 m-0 mb-0">
                <li class="sidebar-menu-item active">
                    <a href="#">
                        <i class="ri-dashboard-line sidebar-menu-item-icon"></i>
                        Dashboard
                    </a>
                </li>
                <li class="sidebar-menu-divider mt-3 mb-1 text-uppercase">Custom</li>
                <li class="sidebar-menu-item has-dropdown">
                    <a href="#">
                        <i class="ri-pages-line sidebar-menu-item-icon"></i>
                        Opciones
                        <i class="ri-arrow-down-s-line sidebar-menu-item-accordion ms-auto"></i>
                    </a>
                    <ul class="sidebar-dropdown-menu">
                        <li class="sidebar-dropdown-menu-item">
                            <a href="menu?opcion=1">
                                Rol
                            </a>
                            <a href="menu?opcion=2">
                                Estudiante
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="sidebar-overlay"></div>
        <!-- end: Sidebar -->

        <!-- start: Main -->
        <main class="bg-light">
            <div class="p-2">
                <!-- start: Navbar -->
                <nav class="px-3 py-2 bg-white rounded shadow-sm">
                    <i class="ri-menu-line sidebar-toggle me-3 d-block d-md-none"></i>
                    <h5 class="fw-bold mb-0 me-auto">Dashboard</h5>
                    <div class="dropdown me-3 d-none d-sm-block">
                        <div class="cursor-pointer dropdown-toggle navbar-link" data-bs-toggle="dropdown"
                             aria-expanded="false">
                            <i class="ri-notification-line"></i>
                        </div>
                        <div class="dropdown-menu fx-dropdown-menu">
                            <h5 class="p-3 bg-indigo text-light">Notification</h5>
                            <div class="list-group list-group-flush">
                                <a href="#"
                                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-start">
                                    <div class="me-auto">
                                        <div class="fw-semibold">Subheading</div>
                                        <span class="fs-7">Content for list item</span>
                                    </div>
                                    <span class="badge bg-primary rounded-pill">14</span>
                                </a>
                                <a href="#"
                                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-start">
                                    <div class="me-auto">
                                        <div class="fw-semibold">Subheading</div>
                                        <span class="fs-7">Content for list item</span>
                                    </div>
                                    <span class="badge bg-primary rounded-pill">14</span>
                                </a>
                                <a href="#"
                                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-start">
                                    <div class="me-auto">
                                        <div class="fw-semibold">Subheading</div>
                                        <span class="fs-7">Content for list item</span>
                                    </div>
                                    <span class="badge bg-primary rounded-pill">14</span>
                                </a>
                                <a href="#"
                                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-start">
                                    <div class="me-auto">
                                        <div class="fw-semibold">Subheading</div>
                                        <span class="fs-7">Content for list item</span>
                                    </div>
                                    <span class="badge bg-primary rounded-pill">14</span>
                                </a>
                                <a href="#"
                                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-start">
                                    <div class="me-auto">
                                        <div class="fw-semibold">Subheading</div>
                                        <span class="fs-7">Content for list item</span>
                                    </div>
                                    <span class="badge bg-primary rounded-pill">14</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="dropdown">
                        <div class="d-flex align-items-center cursor-pointer dropdown-toggle" data-bs-toggle="dropdown"
                             aria-expanded="false">

                            <span class="me-2 d-none d-sm-block fw-bold">
                                <%=user%>                              
                            </span>
                            <c:if test="${sexo.trim() == 'Masculino'}">
                                <img class="navbar-profile-image" src="assets/images/user_varon.png" alt="Image">
                            </c:if>
                            <c:if test="${sexo.trim() == 'Femenino'}">
                                <img class="navbar-profile-image" src="assets/images/user_dama.png" alt="Image">
                            </c:if>
                        </div>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item fw-bold" href="#">${rol}</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li><a class="dropdown-item" href="logout">Logout</a></li>
                        </ul>
                    </div>
                </nav>
                <!-- end: Navbar -->

                <!-- start: Content -->
                <div class="py-4">
                    <!-- start: Summary -->
                    <div class="row g-3">
                        <div class="col-12 col-sm-6 col-lg-3">
                            <a href="#"
                               class="text-dark text-decoration-none bg-white p-3 rounded shadow-sm d-flex justify-content-between summary-primary">
                                <div>
                                    <i class="ri-shopping-cart-2-line summary-icon bg-primary mb-2"></i>
                                    <div>Sales</div>
                                </div>
                                <h4>$435</h4>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-lg-3">
                            <a href="#"
                               class="text-dark text-decoration-none bg-white p-3 rounded shadow-sm d-flex justify-content-between summary-indigo">
                                <div>
                                    <i class="ri-shopping-cart-2-line summary-icon bg-indigo mb-2"></i>
                                    <div>Sales</div>
                                </div>
                                <h4>$435</h4>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-lg-3">
                            <a href="#"
                               class="text-dark text-decoration-none bg-white p-3 rounded shadow-sm d-flex justify-content-between summary-success">
                                <div>
                                    <i class="ri-shopping-cart-2-line summary-icon bg-success mb-2"></i>
                                    <div>Sales</div>
                                </div>
                                <h4>$435</h4>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-lg-3">
                            <a href="#"
                               class="text-dark text-decoration-none bg-white p-3 rounded shadow-sm d-flex justify-content-between summary-danger">
                                <div>
                                    <i class="ri-shopping-cart-2-line summary-icon bg-danger mb-2"></i>
                                    <div>Sales</div>
                                </div>
                                <h4>$435</h4>
                            </a>
                        </div>
                    </div>
                    <!-- end: Summary -->
                    <!-- start: Graph -->
                    <div class="row g-3 mt-2">
                        <div class="col-12 col-md-7 col-xl-8">
                            <div class="card border-0 shadow-sm h-100">
                                <div class="card-header bg-white">
                                    Sales
                                </div>
                                <div class="card-body">
                                    <canvas id="sales-chart"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-5 col-xl-4">
                            <div class="card border-0 shadow-sm h-100">
                                <div class="card-header bg-white">
                                    Visitors
                                </div>
                                <div class="card-body">
                                    <canvas id="visitors-chart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end: Graph -->
                </div>
                <!-- end: Content -->
            </div>
        </main>
        <!-- end: Main -->

        <!-- start: JS -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.8.0/chart.min.js" integrity="sha512-sW/w8s4RWTdFFSduOTGtk4isV1+190E/GghVffMA9XczdJ2MDzSzLEubKAs5h0wzgSJOQTRYyaz73L3d6RtJSg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/script.js"></script>
    </body>
</html>
<%}%>