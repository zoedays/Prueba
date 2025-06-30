<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${sessionScope.usuAut == null}">
    <c:redirect url="../login.jsp" />
</c:if>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <title>Registrar producto</title>
    </head>
    <body>
        <div class="login-container">
            <h1>Registrar nuevo Producto</h1>

            <form action="${pageContext.request.contextPath}/ControlProducto" method="POST"> 
                <table>
                    <tr>
                        <td><label for="txtNom">Nombre: </label></td>
                        <td><input type="text" name="txtNom" required></td>
                    </tr>
                    <tr>
                        <td><label for="txtDes">Descripción: </label></td>
                        <td><input type="text" name="txtDes" required></td>
                    </tr>
                    <tr>
                        <td><label for="txtPre">Precio: </label></td>
                        <td><input type="number" step="0.01" name="txtPre" required></td>
                    </tr>
                    <tr>
                        <td colspan="2"><button type="submit" class="btn btn-primary py-0 mt-2" name="acc" value="Crear">Crear Producto</button></td>
                    </tr>
                </table>
            </form>
        </div>
        <c:if test="${param.msg == '1'}">
            <div class="text-center mt-4">Producto creado con éxito: 
                <c:url var="urlListar" value="/ControlProducto"><c:param name="op" value="Listar"/></c:url>
                <a href="${urlListar}">Ver listado</a>
            </div>
        </c:if>
        <br>
        <a href="${pageContext.request.contextPath}/Productos/menuProductos.jsp">Regresar al menú de usuarios</a>
    </body>
</html>
