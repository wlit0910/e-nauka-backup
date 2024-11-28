<%@ Page Title="Congratulations!" Language="C#" MasterPageFile="~/UserENG/UserEnglish.Master" AutoEventWireup="true" CodeBehind="CongratulationsENG.aspx.cs" Inherits="e_nauka.UserENG.Formularz_internetowy19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <main style="height:auto;">

          <div style="margin-bottom:50px;">
      <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;font-size:55px;">Congratulations!</h1>
         </div>


            <div>
				<h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:35px;margin:25px 0px 25px 0px">You have successfully completed this course.</h3>
			</div>

        <div style="width:auto;height:auto;margin-top:35px;text-align:center;justify-content:center;">
            <img src="../img/congratulaitions.png" alt="envelope" style="width:200px;height:200px;margin-top:0px;margin-bottom:10px;opacity:0.8;">
        </div>


             <div style="margin-top:70px;">
				<h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:30px;margin:25px 0px 25px 0px">New courses will soon appear on your panel,<br><br> where you will be able to gain new knowledge.</h3>
			</div>


        <div style="display:block;text-align:center;margin-top:100px;margin-bottom:200px;">


       <style>.btnLogin1 { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
       

       <asp:Button ID="Login_task" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Go to my courses" BackColor="#ff8454" CssClass="btnLogin1" OnClick="Login_task_Click" />
       
                   
	 </div>



</main>

</asp:Content>
