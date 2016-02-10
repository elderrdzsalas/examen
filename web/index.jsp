<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:query var="subjects" dataSource="jdbc/RecursoParcial1">
    SELECT claveMateria, nombreMateria FROM tecelder.materia
</sql:query>
    

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Primer Parcial</title>
    </head>
    <body>
        <h1>Consultor de Elder Rdz Salas 00947301</h1>
        <table border="0">
            <thead>
                <tr>
                    <th>Selecciona una materia</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>El detalle de la materia sera el profesor que la imparte</td>
                </tr>
                <tr>
                    <td>
                        <form action="response.jsp">
                            <strong>Selecciona una materia:</strong>
                            <select name="claveMateria">
                                <c:forEach var="row" items="${subjects.rows}">
                                    <option value="${row.claveMateria}">${row.nombreMateria}</option>
                                </c:forEach>
                            </select>
                            <input type="submit" value="submit" name="submit" />
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
