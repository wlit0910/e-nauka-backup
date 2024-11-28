<%@ Page Title="Demo page" Language="C#" MasterPageFile="~/GuestENG/SiteENG.Master" AutoEventWireup="true" CodeBehind="DemoENG.aspx.cs" Inherits="e_nauka.GuestENG.Formularz_internetowy11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main style="height:auto;">

         

<div style="max-width: fit-content;
  margin-left: auto;
  margin-right: auto;">



    <div style="text-align:center;width:100%;height:auto;  object-fit: cover;
  object-position: bottom;">
      <img src="../img/pic1-demo.jpg" class="" alt="woman with glasses" style="border-radius:10px;">
    </div>



  <div style="padding-bottom:50px;">
      <h2 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;font-size:50px;text-align:center;">Want to test your C++ knowledge?</h2>
  </div>


    <div style="display:block;text-align:center;">


       <style>.btnContact { min-width:40%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:200px;}
       </style>

       <asp:Button ID="Lekcja_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Go to random lesson" BackColor="#ff8454" CssClass="btnContact" OnClick="Lekcja_demo_Click"  />
                   
	 </div>

</div>


</main>
</asp:Content>
