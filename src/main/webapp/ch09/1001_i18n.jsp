<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.NumberFormat"%>
<html>
<head>
<meta charset="UTF-8">
<title>I18N</title>
</head>
<body>
    <h3>현재 로케일의 국가, 날짜, 통화</h3>
    <%
        Locale locale=request.getLocale();
        String displayLang = locale.getDisplayLanguage();
        String lang = locale.getLanguage();
        String displayCity = locale.getDisplayCountry();
        String city = locale.getCountry();


        Date currentDate = new Date();
        DateFormat dateFormat=DateFormat.getDateInstance(DateFormat.FULL, locale);
        NumberFormat numberFormat = NumberFormat.getNumberInstance(locale);
    %>
    <ul>
        <li>국가: <%= displayCity%></li>
        <li>국가코드: <%= city%></li>
        <li>언어: <%= displayLang%></li>
        <li>언어코드: <%= lang%></li>
        <li>날짜: <%= dateFormat.format(currentDate)%></li>
        <li>숫자: <%= numberFormat.format(12345.67)%></li>
    </ul>
</body>
</html>