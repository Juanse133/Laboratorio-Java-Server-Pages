<%-- 
    Document   : response
    Created on : 15/09/2021, 05:21:14 PM
    Author     : Juan Castaño
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--  // NOMBRE --%>
        <jsp:useBean id="mybean" scope="session" class="org.mypackage.hello.NameHandler" />
        <jsp:setProperty name="mybean" property="name" />
        <h1>Hola, <jsp:getProperty name="mybean" property="name" />!</h1>

        <%--  HORA ACTUAL --%>
        <jsp:useBean id="clock" class="java.util.Date"/>
        <h1><c:choose>

                <c:when test = "${clock.hours <= 12 && clock.hours >= 6}">
                    Buenos días.
                </c:when>
                <c:when test = "${clock.hours <= 18 && clock.hours > 12}">
                    Buenas tardes.
                </c:when>
                <c:when test = "${clock.hours > 18 || clock.hours < 6}">
                    Buenas noches.
                </c:when>

            </c:choose></h1>

        <%-- // EDAD --%>
        <jsp:useBean id="mybean2" scope="session" class="org.mypackage.hello.BirthdateHandler" />
        <jsp:setProperty name="mybean2" property="birthdate" />
        <h1>Tienes <jsp:getProperty name="mybean2" property="birthdate" /></h1>
    </body>
</html>
