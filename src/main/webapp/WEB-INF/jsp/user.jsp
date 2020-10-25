<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>USER</title>
</head>
<body>
    <c:forEach items="${userList}" var="user">
        <p>${user.user_name}</p><br/>
    </c:forEach>
</body>
</html>
