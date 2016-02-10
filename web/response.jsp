<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:query var="counselorQuery" dataSource="jdbc/RecursoParcial1">
    SELECT * FROM tecelder.materia, tecelder.profesor WHERE tecelder.profesor.numNomina = tecelder.materia.numNomina AND tecelder.materia.claveMateria = ? <sql:param value="${param.claveMateria}"/>
</sql:query>
    <c:set var="counselorDetails" value="${counselorQuery.rows[0]}"/>
    

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>${counselorDetails.nombreProfesor}</title>
    </head>
    <body>
        <table>
            <tr>
                <th colspan="2">${counselorDetails.nombreProfesor}</th>
            </tr>
        </table>
    </body>
</html>