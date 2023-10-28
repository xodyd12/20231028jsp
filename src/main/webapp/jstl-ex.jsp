<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>Web Study</title>
</head>
<body>

    <% for(int i = 1; i<=3; i++){ %>
    <h1>메롱 <%=i %> </h1>
    <% } %>

    <%--반복문--%>
    <c:forEach var="i" begin="1" end="5" step="1">
    <h1>hello!!!!${i}</h1>
    </c:forEach>

    <%-- 조건문 --%>
    <%-- 변수 만들기 --%>
    <c:set var="age" value="12" />
    <%--
    <c:if test="${age > 19}">
    <h2>성인 입니다.</h2>
    </c:if>
    <c:if test="${age <= 19}">
    <h2>미성년자입니다.</h2>
    </c:if>
    --%>

    <c:choose>
    <c:when test="${age > 19}">
        <h2>성인입니다.</h2>
    </c:when>
    <c:when test="${age > 16}">
        <h2>고등학생입니다.</h2>
    </c:when>
    <c:otherwise>
        <h2>중학생 이하 입니다.</h2>
   </c:otherwise>
    </c:choose>

</body>
</html>