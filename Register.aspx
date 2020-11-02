<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Lil.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="AdmissionPageStyle.css" rel ="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>
 </title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 200px;
            margin-left:50px;
            width: 1257px;
            height: 343px;
        }
        .auto-style2 {
            height: 26px;
        }
        </style>
</head>
<body style="height: 596px">

    <nav class="navbar navbar-expand-sm fixed-top">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">
    <img src="\images\Logo.png" alt="logo"/>
  </a>

         <ul class="navbar-nav" >
    <li  class="nav-item">
      <a class="nav-link" href="Home.aspx" id="home">Home</a>
    </li>
    <li  class="nav-item">
      <a class="nav-link" href="About.aspx" id="about">About</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Register.aspx" id="admission">Admission</a>
    </li>   
             <li class="nav-item">
      <a class="nav-link" href="Gallery.aspx" id="gallery">Gallery</a>
    </li>  
             <li class="nav-item">
      <a class="nav-link" href="Contact.aspx" id="contact">Contact</a>
    </li>   
             <li class="nav-item">
      <a class="nav-link" href="Login.aspx" id="login">Login</a>
    </li>
  </ul>
        </nav>
    <form id="form1" runat="server" class="auto-style1">
        <asp:Label ID="alertlabel" runat="server"></asp:Label>
        <table>
            <tr>
                <td>
         
                    <asp:TextBox ID="fnametextbox" runat="server" Width="542px" BorderStyle="None" placeholder="First Name"></asp:TextBox></td>
                <td>
       
              <asp:TextBox ID="lnametextbox" runat="server" Width="542px" BorderStyle="None" placeholder="Last Name"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                    <asp:TextBox ID="fathernametextbox" runat="server" Width="542px" BorderStyle="None" placeholder="Father Name"></asp:TextBox></td>
               
                   <td> <asp:TextBox ID="mothernametextbox" runat="server" Width="542px" BorderStyle="None" placeholder="Mother Name"></asp:TextBox></td></tr>
               
                   <tr><td><asp:TextBox ID="emailtextbox" runat="server" Width="542px" BorderStyle="None" placeholder="Email Address"></asp:TextBox></td>
                
                    <td><asp:TextBox ID="mobiletextbox" runat="server" Width="542px" BorderStyle="None" placeholder="Phone Number"></asp:TextBox></td></tr>
                
                    <tr><td><asp:TextBox ID="addresstextbox" runat="server" Width="542px" BorderStyle="None" placeholder="Address"></asp:TextBox>
                        </td>
                
             <td>    <asp:DropDownList ID="districtdropdown" runat="server" Height="31px" Width="542px" BorderStyle="None" >
                        <asp:ListItem Value="0">Select District</asp:ListItem>
                        <asp:ListItem >Ariyalur</asp:ListItem>
                        <asp:ListItem >Chengalpattu</asp:ListItem>
                        <asp:ListItem >Chennai</asp:ListItem>
                        <asp:ListItem >Coimbatore</asp:ListItem>
                        <asp:ListItem >cudaloor</asp:ListItem>
                        <asp:ListItem >Dharmapuri</asp:ListItem>
                        <asp:ListItem >Dhindigul</asp:ListItem>
                        <asp:ListItem >Erode</asp:ListItem>
                        <asp:ListItem >KallaKurichi</asp:ListItem>
                        <asp:ListItem >Kanchipuram</asp:ListItem>
                        <asp:ListItem >Kanyakumari</asp:ListItem>
                        <asp:ListItem >Karur</asp:ListItem>
                        <asp:ListItem >Krishnagiri</asp:ListItem>
                        <asp:ListItem >Madurai</asp:ListItem>
                        <asp:ListItem >Nagapattinam</asp:ListItem>
                        <asp:ListItem >Namakkal</asp:ListItem>
                        <asp:ListItem >Nilagiri</asp:ListItem>
                        <asp:ListItem >Perambalur</asp:ListItem>
                        <asp:ListItem >Pudukkottai</asp:ListItem>
                        <asp:ListItem >Ramanathapuram</asp:ListItem>
                        <asp:ListItem >Ranipet</asp:ListItem>
                        <asp:ListItem >Salem</asp:ListItem>
                        <asp:ListItem >Sivagangai</asp:ListItem>
                        <asp:ListItem >Thenkasi</asp:ListItem>
                        <asp:ListItem >Thanjavur</asp:ListItem>
                        <asp:ListItem >Theni</asp:ListItem>
                        <asp:ListItem >Thuthukudi</asp:ListItem>
                        <asp:ListItem >Thirichirapalli</asp:ListItem>
                        <asp:ListItem >Thirunelveli</asp:ListItem>
                        <asp:ListItem >Thirupatthur</asp:ListItem>
                        <asp:ListItem >Thirupur</asp:ListItem>
                        <asp:ListItem >Thiruvallur</asp:ListItem>
                        <asp:ListItem >Thiruvanamalai</asp:ListItem>
                        <asp:ListItem >Thiruvarur</asp:ListItem>
                        <asp:ListItem >Vellor</asp:ListItem>
                        <asp:ListItem >Villupuram</asp:ListItem>
                        <asp:ListItem >Virudhunagar</asp:ListItem>
           
                    </asp:DropDownList>
                   </td></tr>
              
                   <tr><td> <asp:DropDownList ID="statedropdown" runat="server" Height="31px" Width="542px" BorderStyle="None" >
                        <asp:ListItem Value ="0">Select State</asp:ListItem>
                        <asp:ListItem >TamilNadu</asp:ListItem>
                    </asp:DropDownList></td>
               
                   <td> <asp:DropDownList ID="howyouhearaboutdropdown" runat="server" Height="31px" Width="542px" BorderStyle="None" >
                        <asp:ListItem Value="0">How You Hear About Us</asp:ListItem>
                        <asp:ListItem>Friends</asp:ListItem>
                        <asp:ListItem>Website</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
               </asp:DropDownList></td></tr>
            <tr><td>
                    <asp:TextBox ID="dobtextbox" runat="server" Width="542px" BorderStyle="None" placeholder="Date Of Birth : DD-MM-YYYY"></asp:TextBox></td>
                   
                    
                
                <td>    <asp:DropDownList ID="sexdropdown" runat="server" Height="31px" Width="542px" BorderStyle="None" >
                        <asp:ListItem Value="0">Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList></td></tr>
               <tr><td>
                    <asp:DropDownList ID="admclassdropdown" runat="server" Height="31px" Width="542px" BorderStyle="None">
                        <asp:ListItem Value ="0">Admission for the class</asp:ListItem>
                        <asp:ListItem>LKG</asp:ListItem>
                        <asp:ListItem>UKG</asp:ListItem>
                        <asp:ListItem>STD - 1</asp:ListItem>
                        <asp:ListItem>STD - 2</asp:ListItem>
                        <asp:ListItem>STD - 3</asp:ListItem>
                        <asp:ListItem>STD - 4</asp:ListItem>
                        <asp:ListItem>STD - 5</asp:ListItem>
                        <asp:ListItem>Summer Camp</asp:ListItem>
                        <asp:ListItem>Day Care</asp:ListItem></asp:DropDownList></td>
                
                <td>    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Register" />
                
                 
                
                    <asp:Button ID="Button3" runat="server" Text="cancel" /></td></tr></table>
               
    </form>
</body></html>
  

