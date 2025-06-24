<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%
    // Example: you can fetch user or flower list from session or DB
    String username = (String) session.getAttribute("username");
    List<String> flowers = Arrays.asList("Roses", "Lilies", "Tulips", "Orchids");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bloom & Blossom - Flower Shop</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background: #fff8f0;
        }
        header {
            background-color: #f06292;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .welcome {
            margin-top: 10px;
            font-size: 1.2em;
        }
        .products {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
            padding: 40px;
        }
        .product {
            background: white;
            border: 1px solid #e0e0e0;
            border-radius: 12px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
        }
        .product img {
            max-width: 100%;
            border-radius: 8px;
        }
        footer {
            text-align: center;
            padding: 20px;
            background: #ffe3ec;
            color: #444;
        }
    </style>
</head>
<body>

<header>
    <h1>🌼 Bloom & Blossom</h1>
    <div class="welcome">
        Welcome<% if (username != null) { %>, <%= username %><% } %> to your floral paradise!
    </div>
</header>

<main class="products">
    <% for (String flower : flowers) { %>
        <div class="product">
            <img src="images/<%= flower.toLowerCase() %>.jpg" alt="<%= flower %>">
            <h3><%= flower %></h3>
            <p>Fresh <%= flower %> just for you. Starting at ₹299.</p>
            <button>Buy Now</button>
        </div>
    <% } %>
</main>

<footer>
    &copy; 2025 Bloom & Blossom | Designed with 💐 in India
</footer>

</body>
</html>
