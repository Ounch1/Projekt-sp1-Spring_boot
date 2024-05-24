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
        <form:label path="weight">Weight</form:label>
        <form:input path="weight" />
        <form:errors path="weight" />
    </div>
    <div>
        <form:label path="gender">Gender</form:label>
        <form:input path="gender" />
        <form:errors path="gender" />
    </div>
    <div>
        <input type="submit" />
    </div>
</form:form>
</body>
</html>