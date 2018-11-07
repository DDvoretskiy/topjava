<%--
  Created by IntelliJ IDEA.
  User: Denis
  Date: 31.10.2018
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ft" uri="http://topjava.javawebinar.ru/functions" %>
<html>
<head>
    <style>
        .exceeded {
            color: red;
        }

        .normal {
            color: green;
        }
    </style>
    <title>Еда</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>
<div class="row" style = "text-align: center; margin-top: 30px;">
    <div class="col-6"><a href="meals?action=create"><h5>Добавить еду</h5></a></div>
    <div class="col-6"><a href="index.html"><h5>Home</h5></a></div>
</div>
<div class="container">
    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>Дата</th>
            <th>Описание</th>
            <th>Калории</th>
            <th>Обновить</th>
            <th>Добавить</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${meals}" var="meal">
            <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.MealWithExceed"/>
            <tr class="${meal.exceed ? 'exceeded' : 'normal'}">
                <td>
                        ${ft:formatDateTime(meal.dateTime)}
                </td>
                <td>${meal.description}</td>
                <td>${meal.calories}</td>
                <td><a href="meals?action=update&id=${meal.id}">Update</td>
                <td><a href="meals?action=delete&id=${meal.id}">Delete</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


</div>

</body>
</html>
