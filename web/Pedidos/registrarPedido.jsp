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
        <title>Registrar Pedido</title>
    </head>
    <body>
        <div class="login-container">
            <h1>Registrar nuevo Cliente</h1>

            <form action="${pageContext.request.contextPath}/ControlPedido" method="POST"> 
                <table>
                    
                    <tr>
                        <td colspan="2"><button type="submit" class="btn btn-primary py-0 mt-2" name="acc" value="Crear">Crear pedido</button></td>
                    </tr>
                </table>
            </form>
        </div>
        <c:if test="${param.msg == '1'}">
            <div class="text-center mt-4">Pedido creado con éxito: 
                <c:url var="urlListar" value="/ControlPedido"><c:param name="op" value="Listar"/></c:url>
                <a href="${urlListar}">Ver listado</a>
            </div>
        </c:if>
        <br>
        <a href="${pageContext.request.contextPath}/Pedidos/menuPedidos.jsp">Regresar al menú de pedidos</a>
    </body>
</html>
