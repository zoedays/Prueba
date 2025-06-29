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
        <title>Actualización de usuario</title>
    </head>
    <body>
        <div>
            <h1>Actualizar usuario</h1>
            <c:set var="u" value="${sessionScope.usu}"/>
            <form action="${pageContext.request.contextPath}/ControlUsuario" method="POST"> 
                <table>
                    <tr>
                        <td><label for="txtCod" >Codigo: </label></td>
                        <td><input type="text" name="txtCod" value="${u.codUsuario}" readonly></td>
                    </tr>
                    <tr>
                        <td><label for="selEst" >Estado: </label></td>
                        <td>
                            <select name="selEst">
                                <option value="1" <c:if test="${u.est == 'Activo'}">selected</c:if>>Activo</option>
                                <option value="0" <c:if test="${u.est == 'Inactivo'}">selected</c:if>>Inactivo</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="txtUsn">Username: </label></td>
                            <td><input type="text" name="txtUsn" value="${u.username}" required></td>
                    </tr>
                    <tr>
                        <td><label for="txtNom">Nombre completo: </label></td>
                        <td><input type="text" name="txtNom" value="${u.nom}" required></td>
                    </tr>
                    <tr>
                        <td><label for="txtPass">Contraseña: </label></td>
                        <td><input type="password" name="txtPass" value="" placeholder="******"></td>
                    </tr>
                    <tr>
                        <td><label for="txtRol">Perfil: </label></td>
                        <td>
                            <select name="txtRol">
                                <option value="0" <c:if test="${u.perfil == 'Empleado'}">selected</c:if>>Empleado</option>
                                <option value="1" <c:if test="${u.perfil == 'Administrador'}">selected</c:if>>Administrador</option>
                                </select>
                            </td>
                        </tr>
                        <tr align="center" >
                            <td align="center" colspan="2">
                                <button class="btn btn-primary py-0 mt-2" type="submit" name="acc" value="Actualizar">Guardar cambios</button>
                                <button class="btn btn-secondary py-0 mt-2" type="submit" name="acc" value="Eliminar">Eliminar usuario</button>
                            </td>
                        </tr>
                        <tr>
                        <c:if test="${param.msg == '1'}">
                            <td align="center" colspan="2"><div class="text-center mt-4">Usuario actualizado con éxito</div></td>
                        </c:if>
                    </tr>
                    <tr>
                        <c:url var="urlListar" value="/ControlUsuario"><c:param name="op" value="Listar"/></c:url>
                        <td align="center" colspan="2"><a href="${urlListar}">Regresar al listado de Usuarios</a></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
