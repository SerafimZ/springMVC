<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <br>
         <a href="${pageContext.request.contextPath}/" align="left" class="btn btn-info" role="button"> <span class="glyphicon glyphicon-home"></span> Go to Home Page</a> <br><br>
        <a href="${pageContext.request.contextPath}/showAllTrainers.htm" align="left" class="btn btn-primary disabled" role="button"> <span class="glyphicon glyphicon-user"></span> See all trainers</a>
         <br><br>
    <a href="${pageContext.request.contextPath}/showtable.htm" align="left" class="btn btn-info" role="button"><span class="glyphicon glyphicon-plus"><span class="glyphicon glyphicon-user"></span></span> Insert Trainer</a>
        <title>JSP Page</title>
        <style>
            
            table, th, td, p {
                border: 1px solid black;
                border-collapse: collapse;
                align-self: center;
            }
            th, td, p {
                padding: 5px;
                text-align: left;    
            }
        </style>
        <meta name="viewport" content="width=device-width, initial-scale=1">
 
    </head>

    <body bgcolor="aqua">
        <h2 style="text-align: center;"> List of Trainers</h2>
        
        <form action="showAllTrainers.htm" method="POST" enctype="multipart/form-data" style="text-align: center">
           

            <table style="margin: auto">
                <thead>
                    <tr>

                        <th><b>ID</b></th>
                        <th><b>First Name</b></th>
                        <th> <b>Last Name</b></th>
                        <th><b>Subject</b></th>
                        <th>Update</th>
                        <th>Delete</th>

                    </tr>
                </thead>
                <c:forEach var = "tr" items = "${trainers}">
                    <tr>

                        <td>  <c:out value = "${tr.trainerId}"/> </td>                
                        <td>  <c:out value = "${tr.firstName}"/> </td>                
                        <td>  <c:out value = "${tr.secondName}"/></td>
                        <td>  <c:out value = "${tr.subject}"/></td>
                        <td> <a href="${pageContext.request.contextPath}/update/${tr.trainerId}.htm">Update</a></td>
                        <td> <a href="${pageContext.request.contextPath}/deletetrainers/${tr.trainerId}.htm">Delete</a></td>
                        
                    </tr>
                </c:forEach>
            </table>
            <br>
            
            <a href="${pageContext.request.contextPath}/showtable.htm" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-plus"></span>Add new trainer</span></a>
            
        </form>

    </body>
</html>
