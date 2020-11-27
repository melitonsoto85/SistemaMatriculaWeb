<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Especialidad.aspx.cs" Inherits="SistemaMatriculaWeb.Transa.Especialidad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Especialidad</title>
</head>
<body>
    <h1>Especialidad</h1>
    <form id="form1" runat="server">
        <div>
             <table>
                 <tr>
                     <td>
                     </td>
                     <td>
                        <asp:TextBox ID="TxtIDEspecialidad" runat="server" Width="195px"></asp:TextBox>
                    </td>
                 </tr>
                <tr>
                    <td>
                       Especialidad
                    </td>
                    <td>
                        <asp:TextBox ID="TxtEspecialidad" runat="server" Width="195px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Estado</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="201px">
                        </asp:DropDownList>
                    </td>
                </tr>
                </table>           

        
        <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" />
        <asp:Button ID="BtnEditar" runat="server" Text="Editar" />
        <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" />

        </div>
    </form>
</body>
</html>
