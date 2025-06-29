<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${sessionScope.usuAut == null}">
    <c:redirect url="../login.jsp" />
</c:if>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <title>Menú de Pedidos</title>
    </head>
    <body>
        <h1>Menú de Pedidos</h1>
        <div>
            <c:url var="urlListar" value="/ControlPedidos"><c:param name="op" value="Listar"/></c:url>
            <p><a href="${urlListar}">Listar Pedidos</a></p>
            <c:url var="urlNuevo" value="/ControlPedido"><c:param name="op" value="Nuevo"/></c:url>
            <p><a href="${urlNuevo}">Crear Nuevo Pedido</a></p>
        </div>
        <div>
            <a href="${pageContext.request.contextPath}/index.jsp">Volver al menú principal</a>
        </div>
    </body>
</html>
