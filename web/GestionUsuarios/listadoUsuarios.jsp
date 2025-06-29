<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${sessionScope.usuAut == null}">
    <c:redirect url="../login.jsp" />
</c:if>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <title>Listado de Usuarios</title>
    </head>
    <body>
        <h1>Lista de usuarios</h1>
        <p>
            <c:if test="${param.msg == '2'}">
                El usuario se eliminó satisfactoriamente.
            </c:if>
        <p>
        <c:if test="${not empty sessionScope.lista}">
            <table>
                <tr>
                    <td align="center">Codigo</td>
                    <td align="center">Username</td>
                    <td align="center">Nombre completo</td>
                    <td align="center">Rol</td>
                    <td align="center">Estado</td>
                </tr>
                <c:forEach var="usuario" items="${sessionScope.lista}">
                    <tr>
                        <td><input type="text" name="cod" size="5" value="${usuario.codUsuario}" readonly/></td>
                        <td><input type="text" name="usn" size="15" value="${usuario.username}" readonly/></td>
                        <td><input type="text" name="nom" size="25" value="${usuario.nom}" readonly/></td>
                        <td><input type="text" name="rol" size="10" value="${usuario.perfil}" readonly/></td>
                        <td><input type="text" name="est" size="10" value="${usuario.est}" readonly/></td>
                            <c:url var="urlConsultar" value="/ControlUsuario">
                                <c:param name="op" value="Consultar" />
                                <c:param name="cod" value="${usuario.codUsuario}" />
                            </c:url>
                        <td><a class="btn btn-primary py-0" href="${urlConsultar}">Detalles</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <c:if test="${empty sessionScope.lista}">
            <p>No hay usuarios registrados.</p>
        </c:if>
        <br>
        <div><a href="menuGestionUsuarios.jsp">Regresar al menú de gestión de usuarios</a></div>
    </body>
</html>
