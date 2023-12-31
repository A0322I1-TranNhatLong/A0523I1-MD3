<%--
  Created by IntelliJ IDEA.
  User: Nhật Long
  Date: 29/11/2023
  Time: 6:45 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Product</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-2">
    <h1 class="row">Edit Product</h1>
    <p>
        <c:if test="${message != null}">
            <span class="text-success">${message}</span>
        </c:if>
    </p>
    <p class="text-right">
        <a class="btn btn-primary" href="/product" role="button">Back to product list</a>
    </p>
    <form action="/product" method="post" class="mt-2">
        <input type="hidden" name="action" value="edit">
        <input type="hidden" name="id" value="${product.id}">
        <fieldset class="border border-dark p-3">
            <legend class="col-form-legend d-inline-block pl-1 pr-1" style="width: auto;">Product Information</legend>
            <div class="form-group">
                <label for="name">Name: </label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Name"
                       value="${product.name}">
            </div>
            <div class="form-group">
                <label for="price">Price: </label>
                <input type="text" name="price" id="price" class="form-control" placeholder="Price"
                       value="${product.price}">
            </div>
            <div class="form-group">
                <label for="detail">Detail: </label>
                <input type="text" name="detail" id="detail" class="form-control" placeholder="Detail"
                       value="${product.detail}">
            </div>
            <div class="form-group">
                <label for="manufacturer">Manufacturer: </label>
                <input type="text" name="manufacturer" id="manufacturer" class="form-control" placeholder="Manufacturer"
                       value="${product.manufacturer}">
            </div>
            <button type="submit" class="btn btn-primary float-right">Edit product</button>
        </fieldset>
    </form>
</div>
</body>
</html>