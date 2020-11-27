<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Curso.aspx.cs" Inherits="SistemaMatriculaWeb.Transa.Curso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Plan de Estudio</title>
</head>
<body>
    <h1>Plan de Estudio</h1>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                       Plan de Estudio
                    </td>
                    <td>
                        <asp:TextBox ID="TxtNombreCurso" runat="server" Width="195px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Fecha Inicio</td>
                    <td>
                        <asp:TextBox ID="TxtCreditos" runat="server" Width="117px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Fecha Fin
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    </tr>
                <tr>
                    <td>
                        Estado
                    </td>
                    <td>

                        <asp:TextBox ID="TextBox2" runat="server" Width="196px"></asp:TextBox>

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
