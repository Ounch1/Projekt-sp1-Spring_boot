<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<body>
<h1>New Person Registration</h1>

<form:form modelAttribute="form">
    <form:errors path="" element="div" />
    <div>
        <form:label path="name">Name</form:label>
        <form:input path="name" />
        <form:errors path="name" />
    </div>
    <div>
        <form:label path="age">Age</form:label>
        <form:input path="age" />
        <form:errors path="age" />
    </div>
    <div>
        <form:label path="height">Height</form:label>
        <form:input path="height" />
        <form:errors path="height" />
    </div>
    <div>
        <form:label path="weight">Weight</form:label>
        <form:input path="weight" />
        <form:errors path="weight" />
    </div>
    <div>
        <form:label path="gender">Gender</form:label>
        <form:select path="gender">
            <form:option value="Male">Male</form:option>
            <form:option value="Female">Female</form:option>
        </form:select>
        <form:errors path="gender" />
    </div>
    <div>
        <input type="submit" />
    </div>
</form:form>
    <li><a href="http://localhost:8080/home.html">Back to homepage</a></li>
    <li><a href="http://localhost:8080/website/persons/list.html">View all athletes</a></li>
</body>
</html>