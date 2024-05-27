<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Home</title>
    <style>
        :root {
            --background-color: #0f0f0f; /* Dark background */
            --header-background-color: #1a1a1a; /* Slightly lighter for header */
            --header-text-color: #00ff00; /* Bright green for header text */
            --main-text-color: #33ff33; /* Green for main text */
            --link-color: #00ff00; /* Bright green for links */
            --link-hover-color: #33ff33; /* Lighter green on hover */
            --font-family-main: 'Courier New', Courier, monospace; /* Monospace font for main content */
            --font-family-header: 'Courier New', Courier, monospace; /* Monospace font for headers */
        }

        body {
            font-family: var(--font-family-main);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: var(--background-color);
            color: var(--main-text-color);
            line-height: 1.5; /* Improve readability */
        }

        header {
            width: 100%;
            background-color: var(--header-background-color);
            padding: 1em;
            text-align: center;
            font-family: var(--font-family-header);
            color: var(--header-text-color);
        }

        a {
            color: var(--link-color);
            text-decoration: none; /* Remove underline from links */
        }

        a:hover {
            color: var(--link-hover-color);
            text-decoration: underline; /* Add underline on hover */
        }

        .container {
            width: 90%;
            max-width: 800px;
            margin: 2em auto;
            padding: 1em;
            background-color: var(--header-background-color); /* Slightly lighter background for content area */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 0 10px rgba(0, 255, 0, 0.5); /* Green glow */
            overflow: auto;
        }

        code {
            background-color: #1a1a1a;
            color: #00ff00;
            padding: 0.2em 0.4em;
            border-radius: 4px;
        }

        /* Optional: blinking cursor effect */
        @keyframes blink {
            0% {
                opacity: 1;
            }
            50% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        .cursor {
            display: inline-block;
            width: 10px;
            height: 20px;
            background-color: var(--main-text-color);
            margin-left: 2px;
            animation: blink 1s infinite;
        }

    </style>
</head>
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