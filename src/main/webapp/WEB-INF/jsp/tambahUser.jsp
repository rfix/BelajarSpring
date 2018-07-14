<%-- 
    Document   : tambahUser
    Created on : Jul 14, 2018, 12:37:07 AM
    Author     : rofiq
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Tambah Page</title>
        <style type="text/css">
            h1{
               font-family: sans-serif;
               border-bottom: 3px solid #abcae8;
               color:#4d7ba7;
            }
            
            table{
                border:2px solid #4d7ba7;
                color: #4d7ba7;
                font-family: arial;
                padding: 5px;
            }
            
            table td{
                padding: 5px;
                padding-bottom: 10px;
            }
            
            table input{
                border:1px solid #4d7ba7;
                padding: 3px;
            }
        </style>
    </head>
    <body>
        <h1>Tambah User</h1>
        <form:form modelAttribute="user" action="${pageContext.request.contextPath}/tambahUser" method="post">
            <table>
                <tr>
                    <td>Nama</td>
                    <td>:</td>
                    <td><form:input path="nama" /></td>
                </tr>
                <tr>
                    <td>User Name</td>
                    <td>:</td>
                    <td><form:input path="userName" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>:</td>
                    <td><form:input path="password" /></td>
                </tr>
                <tr>
                    <td>Peran</td>
                    <td>:</td>
                    <td><form:input path="peran" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Simpan" /></td>
                </tr>
            </table>
    </form:form>
    </body>
</html>
