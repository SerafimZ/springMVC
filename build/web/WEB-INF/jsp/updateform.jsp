<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<html>
    <br>
    <a href="${pageContext.request.contextPath}/" align="left" class="btn btn-info" role="button"> <span class="glyphicon glyphicon-home"></span> Go to Home Page</a> 
    <br><br>
    <a href="${pageContext.request.contextPath}/showAllTrainers.htm" align="left" class="btn btn-info" role="button"> <span class="glyphicon glyphicon-user"></span> See all trainers</a> 
    <br><br>
    <a href="${pageContext.request.contextPath}/showtable.htm" align="left" class="btn btn-info" role="button"><span class="glyphicon glyphicon-plus"><span class="glyphicon glyphicon-user"></span></span> Insert Trainer</a>

    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
    </head>
    <body>
        <h2 style="text-align: center">Update existed Trainer</h2>
        <spring:form modelAttribute="trainerupd" action="${pageContext.request.contextPath}/updtrain.htm" method="POST">
            <spring:input type="hidden" path="trainerId" value="${trainerupd.trainerId}"/>
            <table style="margin: auto">
                <tr>
                    <td><spring:label path="firstName">First Name</spring:label></td>
                    <td><spring:input path="firstName" /></td>
                </tr>
                <tr>
                    <td><spring:label path="secondName">Last Name</spring:label></td>
                    <td><spring:input path="secondName"  /></td>
                </tr>
                <tr>
                    <td><spring:label path="subject">Subject</spring:label></td>
                    <td><spring:input path="subject"  /></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="submit" style="margin-left: 50%">
            <br>

        </spring:form>

    </body>
</html>
