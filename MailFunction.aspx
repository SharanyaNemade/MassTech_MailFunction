<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MailFunction.aspx.cs" Inherits="WebForms.MailFunction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>


</head>
<body>
    <form id="form1" runat="server" style="width:30%; padding:50px; border: 5px solid blue; margin-left: 30%; margin-top: 10%">

            <asp:Label ID="Label1" runat="server" Text="<h2>To Send Mail</h2>" Width="273px"></asp:Label>
        
        <p>
            &nbsp;</p>
        <p>
            To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
        </p>
        
        <p>
            Message&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
        </p>
        
        
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" class="form-control"/>
        </p>
    </form>
</body>
</html>
