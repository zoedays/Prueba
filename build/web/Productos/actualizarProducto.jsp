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
        <title>Actualizar Producto</title>
    </head>
    <body>
        <div class="login-container">
            <h1>Actualizar información del productos</h1>
            <c:set var="p" value="${sessionScope.pro}"/>
            <form action="${pageContext.request.contextPath}/ControlProducto" method="POST"> 
                <table>
                    <tr>
                        <td><label for="txtCod">Codigo: </label></td>
                        <td><input type="text" name="txtCod" value="${p.codProducto}" readonly></td>
                    </tr>
                    <tr>
                        <td><label for="selEst" >Estado: </label></td>
                        <td>
                            <select name="selEst">
                                <option value="1" <c:if test="${p.est == 'Activo'}">selected</c:if>>Activo</option>
                                <option value="0" <c:if test="${p.est == 'Inactivo'}">selected</c:if>>Inactivo</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="txtNom">Nombre: </label></td>
                            <td><input type="text" name="txtNom" value="${p.nom}" required></td>
                        </tr>
                        <tr>
                            <td><label for="txtDes">Descripción: </label></td>
                            <td><input type="text" name="txtDes" value="${p.des}" required></td>
                        </tr>
                        <tr>
                            <td><label for="txtPre">Precio: </label></td>
                            <td><input type="number" step="0.01" name="txtPre" value="${p.pre}" required></td>
                        </tr>
                        <tr align="center">
                            <td align="center" colspan="2">
                                <button class="btn btn-primary py-0 mt-2" type="submit" name="acc" value="Actualizar">Guardar cambios</button>
                                <button class="btn btn-secondary py-0 mt-2" type="submit" name="acc" value="Eliminar">Eliminar Producto</button>
                            </td>
                        </tr>
                        <tr>
                        <c:if test="${param.msg == '1'}">
                            <td align="center" colspan="2"><div class="text-center mt-4">Producto actualizado con éxito</div></td>
                        </c:if>
                    </tr>
                    <tr>
                        <c:url var="urlListar" value="/ControlProducto"><c:param name="op" value="Listar"/></c:url>
                        <td align="center" colspan="2"><a href="${urlListar}">Regresar al listado de Productos</a></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>