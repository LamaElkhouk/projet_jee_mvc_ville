<%--
  Created by IntelliJ IDEA.
  User: Lamia
  Date: 11/05/2023
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 	CSS (w3css) de la Page -->
  <link rel="stylesheet" href="<c:url value="css/w3.css" />"/>
  <title>City Details JSP</title>
</head>

<body>
<div class="w3-container">
  <div>
    <h2 style="text-align: center"><spring:message code="application.city"/> - ${city.city}</h2>
  </div>
  <br>
  <div class="w3-container w3-center">
    <table class="w3-centered w3-table-all">
      <tbody>
      <tr>
        <td><spring:message code="application.id"/></td>
        <td>${city.id}</td>
      </tr>
      <tr>
        <td><spring:message code="application.city"/></td>
        <td>${city.city}</td>
      </tr>
      <tr>
        <td><spring:message code="application.country"/></td>
        <td>${city.country.country}</td>
      </tr>
      <tr>
        <td><spring:message code="application.image"/></td>
        <td><img src="<c:url value="/static/images/ville.jpg"/>" alt="Image de ${city.city}"></td>
      </tr>
      </tbody>
    </table>
  </div>
</div>
</body>

</html>

