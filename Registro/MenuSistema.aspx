<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuSistema.aspx.cs" Inherits="SistemaMatriculaWeb.Registro.MenuSistema" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu Sistema</title>
    <style type="text/css">
        .auto-style1 {
            width: 1080px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Menu Sistema</h1>
        <div class="auto-style1">
           <table>
            <tr><td>
                <a href="Ciclo.aspx">Ciclo</a><br />
                </td>
                <td>
                <a href="ReservaMatricula.aspx">Reserva Matricula</a><br />
                </td>
                <td>
                    <a href="Servicio.aspx">Servicio</a>
                </td>
            </tr>
            
               </table><br />
            Descripcion<br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Estado<br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Guardar" />
            <asp:Button ID="Button2" runat="server" Text="Editar" />
            <asp:Button ID="Button3" runat="server" Text="Cancelar" />

        </div>
    </form>
</body>
</html>
