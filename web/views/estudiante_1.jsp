<%-- 
    Document   : rol
    Created on : 27 jun 2024, 9:57:53
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel="shortcut icon" href="./assets/images/pagina.png" type="image/x-icon">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
        <link rel="stylesheet" href="./assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="./assets/css/style.css"/>
    </head>
    <body>
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
                            <a href="menu?opcion=3">
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
                    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">agregar</button>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Id</th>
                                <th scope="col">Nombres</th>
                                <th scope="col">Apellidos</th>
                                <th scope="col">Correo</th>
                                <th scope="col">Telefono</th>
                                <th scope="col">IdCarrera</th>
                                <th scope="col" colspan="2">Estado</th>
                            </tr>
                        </thead>
                        <tbody>
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Nuevo Rol</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="mb-3">
                                                <label for="recipient-name" class="col-form-label">Rol: </label>
                                                <input type="text" class="form-control" id="rol" name="rol">
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary" id="guardar">Guardar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Editar Rol</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="mb-3">
                                                <label for="recipient-name" class="col-form-label">Rol: </label>
                                                <input type="text" class="form-control" id="rol_edit" name="rol_edit">
                                                <input type="hidden" class="form-control" id="id_rol_edit" name="id_rol_edit">
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary" id="editar">Editar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </tbody>
                    </table>
                </div>        
                <script src="./assets/js/bootstrap.bundle.min.js"></script>
                <script src="./assets/js/jquery-3.7.1.min.js"></script>
                <script src="./assets/js/rol.js"></script>
                </body>
                </html>
                <%}%>