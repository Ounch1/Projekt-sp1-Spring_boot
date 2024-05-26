<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
   <title>Persons</title>
</head>
<body>
<h1>Athletes page</h1>

<ul>
   <c:forEach items="${persons}" var="person">
      <li>
         <a href="http://localhost:8080/website/persons/person/${person.name}">${person.name}</a> 
         | HEIGHT: ${person.height} 
         | WEIGHT: ${person.weight} 
         | AGE:  ${person.age} 
         | GENDER: ${person.gender}
      </li>
   </c:forEach>
   <br>
   <br>
   <li><a href="http://localhost:8080/home.html">Back to homepage</a></li>
</ul>
</body>
</html>
