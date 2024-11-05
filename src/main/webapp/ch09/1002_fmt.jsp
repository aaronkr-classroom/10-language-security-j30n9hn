<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.NumberFormat"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>i18n-2</title>
</head>
<body>
    <p>-------- 기본 로케일----------</p>
    <fmt:bundle basename="ch09.com.bundle.myBundle" var="resourceBundle" />
    <p>제목: <fmt:message key="title" bundle="${resourceBundle}"/></p>
    <p><fmt:message key="username" var="userMSG" bundle = "${resourceBundle}"/></p>
    <!---이름 : ${userMSG}</p>--->

    <p>-------- 염문 로케일----------</p>
    <fmt:setLoacle value="en"/>
    <fmt:bundle basename="ch09.com.bundle.myBundle" var="resourceBundle" />
    <p>제목: <fmt:message key="title" bundle="${resourceBundle}"/></p>
    <p>이름: <fmt:message key="username" var="userMSG" bundle = "${resourceBundle}"/>

</body>
</html>