﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarDatos.aspx.cs" Inherits="WebApplication2.MostrarDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="css/Estilos.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="fondo" runat="server">
                <tr>
                    <td>
                        <h1>Datos Ingresados</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table id="centro" runat="server">
                            <tr id="fila">
                                <th class="celda1c">Nombre</th>
                                <th class="celda1c">Apellido</th>
                                <th class="celda1c">DNI</th>
                                <th class="celda1c">E-mail</th>
                                <th class="celda1c">Turno</th>
                            </tr>
                            <tr id="fila1">
                                <td class="celdaDato"></td>
                                <td class="celdaDato"></td>
                                <td class="celdaDato"></td>
                                <td class="celdaDato"></td>
                                <td class="celdaDato"></td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <asp:Label Text="Comentario" runat="server" CssClass="comentario"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <asp:TextBox TextMode="MultiLine" Columns="80" Rows="10" runat="server" ID="comentario" placeholder="Ingresar un comentario"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <asp:Button Text="Guardar" runat="server" CssClass="btn" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>