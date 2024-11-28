<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSec/Verification.Master" AutoEventWireup="true" CodeBehind="Verification.aspx.cs" Inherits="e_nauka.AdminSec.Formularz_internetowy15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div  style="display: flex;
justify-content: center;">

<div  style="background-color: white;
width: 900px;
height: 450px;
border-radius: 25px;
border-style: solid;
border-width: 4px;
justify-content: center;
margin: 120px 0px 50px 0px;
opacity: 0.75;">




             <div style="margin:40px 0px 20px 0px;">
             <h1 style="    text-align: center;
    font-family: Cambria;">
                 Witaj <asp:Label ID="LoginAdm" runat="server" Text="" ForeColor="Blue"></asp:Label>
             !</h1>
         </div>

         <div>
         <h2 style="    text-align: center;
font-family: Cambria;"> Potrzebne jest potwierdzenie tożsamości.
         </h2>
         <p  style="    text-align: center;
font-size: large;
font-family: Cambria;
margin: 40px 0px 30px 0px;">Aby potwierdzić swoją tożsamość, w poniższym polu podaj unikalny<br>
             <strong>token</strong> powiązany z kontem administratora.
         </p>
     </div>

             <div style="display: flex;
    justify-content: center;">

            <p style="font-size: large;
    font-family: Cambria;"><strong>Token:</strong>&emsp;&ensp;
                <asp:TextBox ID="Token" runat="server" Height="18px" Width="50px" BackColor="#cccccc" style="text-align: center"></asp:TextBox>
             </p> 
         </div>
         <div style="display: flex;
    justify-content: center;">

<style>.weryfikuj {

        width: 90px;
    height: 30px;
    margin: 20px;
    font-weight: bold;
    font-family: Cambria;
    border-width: 2px
                 }
</style>

             <asp:Button CssClass="weryfikuj" ID="Verify_Admin" runat="server" Text="Weryfikuj" OnClick="Verify_Admin_Click"/>
         </div>

         <div style="display: flex;
    justify-content: center;">
            <asp:Label ID="AdminIsValid" runat="server" Text="" ForeColor="Red" style="text-align:center;"></asp:Label>
         </div>


         </div>

    </div>

</asp:Content>
