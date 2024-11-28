<%@ Page Title="Gratulacje" Language="C#" MasterPageFile="~/Theory.Master" AutoEventWireup="true" CodeBehind="TaskSuccess.aspx.cs" Inherits="e_nauka.Formularz_internetowy15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main style="height:auto;">

          <div style="margin-bottom:50px;">
      <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;font-size:55px;">Gratulacje!</h1>
         </div>


            <div>
				<h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:35px;margin:25px 0px 25px 0px">Z powodzeniem ukończyłeś tę lekcję.</h3>
			</div>


             <div style="margin-top:70px;">
				<h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:30px;margin:25px 0px 25px 0px">Aby uzyskać dostęp do całego kursu, zaloguj się i wybierz odpowiedni kurs.</h3>
			</div>


        <div style="display:block;text-align:center;margin-top:100px;">


       <style>.btnLogin1 { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
       

       <asp:Button ID="Login_task" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Zaloguj się" BackColor="#ff8454" CssClass="btnLogin1" OnClick="Login_task_Click"  />
       
                   
	 </div>


<div style="display:block;text-align:center;margin-top:20px;">

    <style>.btnRand { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:200px;}</style>
    <asp:Button ID="Losuj_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Losuj kolejną lekcję" BackColor="#ff8454" CssClass="btnRand" OnClick="Losuj_demo_Click"  />

 </div>




    </main>
</asp:Content>
