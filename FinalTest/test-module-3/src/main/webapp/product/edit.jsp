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
<!-- Start Content-->
<div class="container-fluid">

  <div class="row">
    <div class="col-12">
      <div class="card-box">
        <h4 class="header-title">Edit customer's information</h4>

        <div class="row">
          <div class="col-12">
            <div class="p-2">
              <form class="form-horizontal" action="/customer?action=create"
                    method="post">
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" >Text</label>
                  <div class="col-sm-10">
                    <input type="text" id="a" class="form-control" value="Some text value...">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Text</label>
                  <div class="col-sm-10">
                    <input type="text" id="agf" class="form-control" value="Some text value...">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" >Text</label>
                  <div class="col-sm-10">
                    <input type="text" id="b" class="form-control" value="Some text value...">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" >Text</label>
                  <div class="col-sm-10">
                    <input type="text" id="r" class="form-control" value="Some text value...">
                  </div>
                </div>
                <div class="form-group row">
                  <div class="offset-4">
                    <button type="submit" class="btn btn-primary"
                            style="padding: 10px 40px">Edit
                    </button>
                    <button class="btn btn-primary"
                            style="padding: 10px 40px"><a href="/customer" style="text-decoration: none; color: white">Cancel</a>
                    </button>
                  </div>
                </div>
              </form>
            </div>
          </div>

        </div>
        <!-- end row -->

      </div> <!-- end card-box -->
    </div><!-- end col -->
  </div>
  <!-- end row -->
</div> <!-- container -->
</body>
</html>
