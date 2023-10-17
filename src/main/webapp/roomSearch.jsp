<%@ page import="com.example.housemanage.controller.SearchServlet" %>
<%@ page import="com.example.housemanage.model.Room" %>
<%@ page import="java.util.List" %>
<%
    String local = request.getParameter("local");
    String area = request.getParameter("area");
    String price = request.getParameter("price");
    String inputsearch = request.getParameter("inputsearch");
    SearchServlet searchServlet = new SearchServlet();
    List<Room> roomListSearch = searchServlet.getRoomBySearch(local, area, price, inputsearch);
%>
<html>
<head>
    <title>Dashboard</title>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        form .bg-white shadow{
            position: fixed;
        }
        #local{
            padding-top: 10px;
            padding-bottom: 10px;
            margin-top: 20px;
            margin-bottom: 10px;
            margin-left: 10%;
            display: inline-block;
        }
        #area{
            padding-top: 10px;
            padding-bottom: 10px;
            margin-top: 20px;
            margin-bottom: 10px;
            margin-left: 3%;
            display: inline-block;
        }
        #price{
            padding-top: 10px;
            padding-bottom: 10px;
            margin-top: 20px;
            margin-bottom: 10px;
            margin-left: 3%;
            display: inline-block;
        }
        .inputsearch{
            padding-top: 10px;
            padding-bottom: 10px;
            margin-top: 20px;
            margin-bottom: 10px;
            margin-left: 3%;
            display: inline-block;
            padding-left:6px;
        }
    </style>
</head>
<body>
<nav class="bg-gray-800" style="width: 100%; position:fixed; top:0 ; z-index:1;">
    <div class="mx-auto max-w-7xl px-2 sm:px-6 lg:px-8">
        <div class="relative flex h-16 items-center justify-between">
            <div class="absolute inset-y-0 left-0 flex items-center sm:hidden">
                <!-- Mobile menu button-->
                <button type="button" class="relative inline-flex items-center justify-center rounded-md p-2 text-gray-400 hover:bg-gray-700 hover:text-white focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white" aria-controls="mobile-menu" aria-expanded="false">
                    <span class="absolute -inset-0.5"></span>
                    <span class="sr-only">Open main menu</span>
                    <svg class="block h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5"></path>
                    </svg>
                    <svg class="hidden h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12"></path>
                    </svg>
                </button>
            </div>
            <div class="flex flex-1 items-center justify-center sm:items-stretch sm:justify-start">
                <div class="flex flex-shrink-0 items-center">
                    <img style="height: 55px; padding:0;" class="h-8 w-auto" src="img/logo.jpg" alt="Your Company">
                </div>
                <div class="hidden sm:ml-6 sm:block" >
                    <div class="flex space-x-4" style="margin-top: 8px;">
                        <a href="index.jsp" class="bg-gray-900 text-white rounded-md px-3 py-2 text-sm font-medium" aria-current="page">Dashboard</a>
                        <a href="aboutWebsite.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white rounded-md px-3 py-2 text-sm font-medium">About</a>
                    </div>
                </div>
            </div>
            <button style="width: 13%; margin-top: 3px;" onclick="redirectLogin()" type="button" class="btn btn-secondary">Add new post</button>
        </div>
    </div>
</nav>

<form class="bg-white shadow" style="position: fixed; width:100%; top:60px; z-index: 1;" method="post" action="roomSearch.jsp">
    <!-- <label for="large" class="block mb-2 text-base font-medium text-gray-900 dark:text-white">Large select</label> -->
    <select name="local" style="width: 15%;" id="local" class="block w-full px-4 py-2 text-base text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
        <option selected>Local</option>
        <option value="NewYork">NewYork</option>
        <option value="Los Angeles">Los Angeles</option>
        <option value="Chicago">Chicago</option>
        <option value="San Francisco">San Francisco</option>
        <option value="Miami">Miami</option>
        <option value="Austin">Austin</option>
        <option value="Boston">Boston</option>
        <option value="Seattle">Seattle</option>
        <option value="New Orlean">New Orlean</option>
        <option value="Denver">Denver</option>
    </select>

    <select name="area" style="width: 15%;" id="area" class="block w-full px-4 py-2 text-base text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
        <option selected>Area</option>
        <option>10-70</option>
        <option>70-200</option>
        <option>200-300</option>
        <option>400-600</option>
        <option>800-1000</option>
        <option>>1000</option>
    </select>

    <select name="price" style="width: 15%;" id="price" class="block w-full px-4 py-2 text-base text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
        <option selected>Prices($)</option>
        <option>100-250</option>
        <option>250-500</option>
        <option>500-700</option>
        <option>700-900</option>
        <option>900-1200</option>
        <option> >1200 </option>
    </select>

    <input name="inputsearch" class="inputsearch" type="search" style="width: 20%;" placeholder="Search">

    <button style="display: inline-block; margin-left:3%; margin-top:-5px" type="submit" class="btn btn-secondary">Search</button>
</form>

<main style="margin-left: 15%; margin-right:15%;">
    <div class="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8" style="margin-top: 150px;">
        <!-- Your content -->
        <%
            if(!roomListSearch.isEmpty()){
                for(Room room : roomListSearch){%>
        <div class="row">

            <div class="col-md-3">
                <div class="card">
                    <a href="inforHome.jsp"><img style="max-width: 100%;" src="img/anh2.jpg" alt=""></a>
                </div>
            </div>
            <div class="col-md-9">
                <div class="card" style="border: 0;">
                    <b><a style="text-decoration: none; color:black;" href="inforHome.jsp?roomid=<%=room.getID()%>"><%= room.getHeading() %></a></b>
                    <div>
                        <p style="color: brown; display:inline-block;"><b>Price: <%= room.getPrice() %></b></p>
                        <p style="display: inline-block; margin-left: 4%;">Area: <%= room.getArea() %></p>
                        <p style="display: inline-block; margin-left: 4%;">Address: <%= room.getAddress() %></p>
                    </div>
                    <p style="color: rgb(122, 121, 120); font-size: 12px;"><%= room.getDescription() %></p>
                    <img style="display: inline-block;" src="" alt=""> <p style="display: inline-block;">Article author: <%= room.getName() %></p>
                </div>
            </div>
        </div>
        <div style="height: 12px;"></div>
        <hr>
        <div style="height: 12px;"></div>

        <% }
        }
        %>

    </div>
</main>

<script src="ButtonAvatar.js"></script>
<script>
    function redirectLogin() {
        window.location.href = "http://localhost:8080/HouseManage/login";
    }
</script>
</body>
</html>