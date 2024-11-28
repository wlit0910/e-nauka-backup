<%@ Page Title="Mało brakowało..." Language="C#" MasterPageFile="~/Theory.Master" AutoEventWireup="true" CodeBehind="TaskFail.aspx.cs" Inherits="e_nauka.Formularz_internetowy16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <main style="height:auto;">

          <div style="margin-bottom:50px;">
      <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;font-size:55px;">Mało brakowało...</h1>
         </div>


            <div>
				<h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:35px;margin:25px 0px 25px 0px">Jeden mały krok dzieli Cię od zakończenia lekcji.</h3>
			</div>


             <div style="margin-top:70px;">
				<h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:30px;margin:25px 0px 25px 0px">Czy chcesz spróbować jeszcze raz?.</h3>
			</div>


        <div style="display:block;text-align:center;margin-top:100px;">


       <style>.btnLogin1 { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
       

       <asp:Button ID="Demo_yes" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Tak" BackColor="#ff8454" CssClass="btnLogin1" OnClick="Demo_yes_Click"  />
       
                   
	 </div>


<div style="display:block;text-align:center;margin-top:20px;">

    <style>.btnRand { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:200px;}</style>
    <asp:Button ID="Demo_no" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Nie" BackColor="#ff8454" CssClass="btnRand" OnClick="Demo_no_Click"  />

 </div>




    </main>


</asp:Content>
