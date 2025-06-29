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
        <title>Actualizar cliente</title>
    </head>
    <body>
        <div class="login-container">
            <h1>Actualizar información del cliente</h1>
            <c:set var="c" value="${sessionScope.cli}"/>
            <form action="${pageContext.request.contextPath}/ControlCliente" method="POST"> 
                <table>
                    <tr>
                        <td><label for="txtCod">Codigo: </label></td>
                        <td><input type="text" name="txtCod" value="${c.codCliente}" readonly></td>
                    </tr>
                    <tr>
                        <td><label for="selEst" >Estado: </label></td>
                        <td>
                            <select name="selEst">
                                <option value="1" <c:if test="${c.est == 'Activo'}">selected</c:if>>Activo</option>
                                <option value="0" <c:if test="${c.est == 'Inactivo'}">selected</c:if>>Inactivo</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="txtNom">Nombres: </label></td>
                            <td><input type="text" name="txtNom" value="${c.nom}" required></td>
                    </tr>
                    <tr>
                        <td><label for="txtApe">Apellidos: </label></td>
                        <td><input type="text" name="txtApe" value="${c.ape}" required></td>
                    </tr>
                    <tr>
                        <td><label for="txtDir">Dirección: </label></td>
                        <td><input type="text" name="txtDir" value="${c.dir}" required></td>
                    </tr>
                    <tr>
                        <td><label for="txtDni">DNI: </label></td>
                        <td><input type="text" name="txtDni" maxlength="8" value="${c.dni}" required></td>
                    </tr>
                    <tr>
                        <td><label for="txtTel">Telefono: </label></td>
                        <td><input type="text" name="txtTel" maxlength="7" value="${c.tel}"></td>
                    </tr>
                    <tr>
                        <td><label for="txtCel">Celular </label></td>
                        <td><input type="text" name="txtCel" maxlength="9" value="${c.cel}" required></td>
                    </tr>
                    <tr align="center">
                        <td align="center" colspan="2">
                            <button class="btn btn-primary py-0 mt-2" type="submit" name="acc" value="Actualizar">Guardar cambios</button>
                            <button class="btn btn-secondary py-0 mt-2" type="submit" name="acc" value="Eliminar">Eliminar Cliente</button>
                        </td>
                    </tr>
                    <tr>
                        <c:if test="${param.msg == '1'}">
                            <td align="center" colspan="2"><div class="text-center mt-4">Cliente actualizado con éxito</div></td>
                        </c:if>
                    </tr>
                    <tr>
                        <c:url var="urlListar" value="/ControlCliente"><c:param name="op" value="Listar"/></c:url>
                        <td align="center" colspan="2"><a href="${urlListar}">Regresar al listado de Clientes</a></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
