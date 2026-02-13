<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmp.aspx.cs" Inherits="WebForms.AddEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>


</head>
<body>
    <form id="form1" runat="server" style="width:30%; padding:50px; border: 5px solid blue; margin-left: 30%; margin-top: 10%">
        <div>

            

            Name&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
            <br />
            <br />


            Salary&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
            
            <br />
            <br />
            Photo&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            Manager&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            
            <br />
            <br />
            
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" Width="353px" />

            

        </div>
    </form>
</body>
</html>
