<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style><%@include file="stylesheet.css"%></style>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<html>
<head>
    <title>UUM OL (G3) - Main Page</title>
</head>
<body>
    <header>
        <p>
            <%= "UUM Online Learning" %>
            <a href="loginpage.jsp" type="submit" class="button">Logout</a>
        </p>
    </header>

    <div style="display: flex; justify-content: center">
        <p>
            <%= "Successfully logged in to UUM Online Learning" %>
        </p>
    </div>

    <div style="display: flex; justify-content: center">
        <p>
            <%= "Main Page of UUM Online Learning" %>
        </p>
    </div>

    <jsp:useBean id = "quotes" class = "com.example.pbl3part1.Quote">
        <jsp:setProperty name = "quotes" property = "apiKey" value = "https://zenquotes.io/api/random"/>
        <jsp:setProperty name = "quotes" property = "quoteOTD" value = "quotes"/>
    </jsp:useBean>

    <button id="quoteBtn" style="display: none">Open Modal</button>

    <div id="quoteWindow" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2><%= "Quote of the Day" %></h2>
            <p>
                <span id="quote"><%= "You can suffer the pain of change or suffer remaining the way you are." %></span>
<%--                <jsp:getProperty name = "quotes" property = "quoteOTD"/>--%>
            </p>
        </div>
    </div>

    <script>
        var modal = document.getElementById("quoteWindow");

        var btn = document.getElementById("quoteBtn");

        var span = document.getElementsByClassName("close")[0];

        btn.onclick = function() {
            modal.style.display = "block";
        }

        span.onclick = function() {
            modal.style.display = "none";
        }

        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

        const api_url = 'https://zenquotes.io/api/random';

        async function getQuote() {
            const response = await fetch(api_url);
            const data = await response.json();
            const {q, a} = data;
            document.getElementById("quote").textContent = q;
        }

        getQuote();

    </script>
</body>
</html>
