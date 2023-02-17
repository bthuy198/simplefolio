<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 16/02/2023
  Time: 8:49 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Minton - Responsive Admin Dashboard Template</title>
    <jsp:include page="layout/meta-head.jsp"></jsp:include>

</head>
<body>


<div class="container"style="margin-top: 80px">

    <div class="row">
        <div class="col-lg-12">
            <div class="card-box">
                <h4 class="page-title">Customers List</h4>
                <div class="form-group row">
                    <button type="submit" class="btn btn-primary"><a href="/customer?action=create" style="text-decoration: none; color: white">Create</a></button>
                </div>
                <div class="table-responsive text-center">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Username</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                            <td>
                                <a href="" style="margin-right: 5px"><i
                                        class="fa-solid fa-pen-to-square"></i></a>
                                <a onclick="" style="cursor: pointer; color: #7266ba"><i
                                        class="fa-solid fa-trash"></i></a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <form action="/customer?action=delete" method="post" id="deleteForm">
                        <input type="hidden" name="idDelete" id="idDelete" value="">
                    </form>
                </div>
            </div> <!-- end card-box -->
        </div> <!-- end col -->
    </div>
</div> <!-- container -->


<!-- Vendor js -->
<script src="/assets\js\vendor.min.js"></script>

<!-- Sweet Alerts js -->
<script src="/assets\libs\sweetalert2\sweetalert2.min.js"></script>

<!-- Sweet alert init js-->
<script src="/assets\js\pages\sweet-alerts.init.js"></script>

<!-- App js -->
<script src="/assets\js\app.min.js"></script>
<script src="/assets/js/sweetalert2.min.js"></script>
</body>
</html>
