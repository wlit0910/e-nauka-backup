<%@ Page Title="Log Out" Language="C#" MasterPageFile="~/UserENG/UserEnglish.Master" AutoEventWireup="true" CodeBehind="LogoutENG.aspx.cs" Inherits="e_nauka.UserENG.Formularz_internetowy15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <main style="height:auto">
                 <div style="margin-bottom:50px;">
     <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;font-size:55px;">It's a pity you have to go now...</h1>
        </div>


           <div>
			<h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:25px;margin:25px 0px 25px 0px">Are you sure you want to log out?</h3>
		</div>




       <div style="display:block;text-align:center;margin-top:100px;">


      <style>.btnLogout { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:450px;}</style>
      

      <asp:Button ID="Logout_user" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Log Out" BackColor="#ff8454" CssClass="btnLogout" OnClick="Logout_user_Click"  />
      
                  
 </div>
    </main>

</asp:Content>
