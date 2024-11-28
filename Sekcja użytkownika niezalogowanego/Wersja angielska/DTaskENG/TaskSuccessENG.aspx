<%@ Page Title="Congratulations" Language="C#" MasterPageFile="~/DTaskENG/TheoryENG.Master" AutoEventWireup="true" CodeBehind="TaskSuccessENG.aspx.cs" Inherits="e_nauka.DTaskENG.Formularz_internetowy14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <main style="height:auto;">

          <div style="margin-bottom:50px;">
      <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;font-size:55px;">Congratulations!</h1>
         </div>


            <div>
				<h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:35px;margin:25px 0px 25px 0px">You have successfully completed this lesson.</h3>
			</div>


             <div style="margin-top:70px;">
				<h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:30px;margin:25px 0px 25px 0px">To access the entire course, log in and select the appropriate course.</h3>
			</div>


        <div style="display:block;text-align:center;margin-top:100px;">


       <style>.btnLogin1 { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
       

       <asp:Button ID="Login_task" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Log In" BackColor="#ff8454" CssClass="btnLogin1" OnClick="Login_task_Click"  />
       
                   
	 </div>


<div style="display:block;text-align:center;margin-top:20px;">

    <style>.btnRand { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:200px;}</style>
    <asp:Button ID="Losuj_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Choose another random lesson" BackColor="#ff8454" CssClass="btnRand" OnClick="Losuj_demo_Click"  />

 </div>




    </main>

</asp:Content>
