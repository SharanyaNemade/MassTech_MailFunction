<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebForms.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>

    
</head>
<body>


    <form id="form1" runat="server" style="width:30%; padding:50px; border: 5px solid blue; margin-left: 30%; margin-top: 10%">
        <div>

     
    Name<asp:TextBox ID="TextBox1" class="form-control" runat ="server" placeholder="Enter Name"></asp:TextBox>    
     <br />

    
    ID&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" class="form-control" runat="server"  placeholder="Enter ID"></asp:TextBox>
    <br />

    
    Salary<asp:TextBox ID="TextBox3" class="form-control" runat="server" placeholder="Enter Salary"></asp:TextBox>
    <br />
    

    <asp:Button ID="Button1" class="btn btn-primary"  runat="server" Text ="Submit" onClick =" Button1_Click"/>
    
     <br />
     <br />

    <asp:Label ID="Label1" runat="server" Width ="107%"></asp:Label>

</div>
        
    </form>
</body>
</html>
