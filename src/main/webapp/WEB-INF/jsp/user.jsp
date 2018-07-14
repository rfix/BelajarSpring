<%-- 
    Document   : user
    Created on : Jul 10, 2018, 11:14:42 AM
    Author     : rofiq
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page contentType="text/html" pageEncoding="windows-1252"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link href="http://cdn.jsdelivr.net/webjars/bootstrap/3.3.4/css/bootstrap.min.css"
              th:href="@{/webjars/bootstrap/3.3.4/css/bootstrap.min.css}"
              rel="stylesheet" media="screen" />

        <script src="http://cdn.jsdelivr.net/webjars/jquery/2.1.4/jquery.min.js"
        th:src="@{/webjars/jquery/2.1.4/jquery.min.js}"></script>

        <link href="../static/css/guru.css"
              th:href="@{/css/guru.css}" rel="stylesheet" media="screen"/>
        <title>Daftar User</title>
        
        <style type="text/css">
            h1{
               font-family: sans-serif;
               border-bottom: 3px solid #abcae8;
               color:#4d7ba7;
            }
            
            #table{
               border-collapse: collapse;
               color: #4d7ba7;
               font-family: arial;
            }
            
            #table th{
               padding: 10px;
               border-bottom: 2px solid #4d7ba7;
               text-transform: uppercase;
               font-weight: bold;
            }
            
            #table td{
                padding: 10px;
                border-bottom: 1px solid #4d7ba7;
                padding-right: 25px;
            }
            
            #table a{
                text-decoration: none;
                color:#4d7ba7;
            }
            
            #buttonTambah{
                margin-bottom: 10px;
            }
            
            #buttonTambah a{
                text-decoration: none;
                color: #ffffff;
                font-family: arial;
                background: #abcae8;
                border:1px solid antiquewhite;
                padding: 5px;
                border-radius: 8px;
            }
        </style>
    </head>
    <body>
        <h1>User</h1>
        <div id="buttonTambah">
            <a href="${pageContext.request.contextPath}/tambah">Tambah</a>
        </div>
        
        <table id="table">
            <thead>
                <tr>
                    <th>id</th>
                    <th>nama</th>
                    <th>user name</th>
                    <th>password</th>
                    <th>Opsi</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.nama}" /></td>
                    <td><c:out value="${user.userName}" /></td>
                    <td><c:out value="${user.password}" /></td>
                    <td><c:out value="${user.peran}" /></td>
                    <td><a href="${pageContext.request.contextPath}/edit/${user.id}">Edit</a> | 
                        <a href="${pageContext.request.contextPath}/delete/${user.id}">Delete</a>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
