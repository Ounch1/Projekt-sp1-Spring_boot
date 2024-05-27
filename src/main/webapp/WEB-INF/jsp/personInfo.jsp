<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weight Lifting Goals</title>
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
<header>
    <h1>Console - Weight Lifting Goals</h1>
</header>
<div class="container">
    <h1>${person.name}'s weight lifting goals:</h1>
    <h2>${person.name} should bench: ${person.weight * 1.25}kg</h2>
    <h2>${person.name} should squat: ${person.weight * 1.5}kg</h2>

    <ul>
        <li><a href="http://localhost:8080/website/persons/list.html">View other athletes</a></li>
        <li><a href="http://localhost:8080/home.html">Back to homepage</a></li>
    </ul>
</div>
<div class="cursor"></div>
</body>
</html>
