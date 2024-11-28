<%@ Page Title="Część I. Wstęp" Language="C#" MasterPageFile="~/Theory.Master" AutoEventWireup="true" CodeBehind="DPartI.aspx.cs" Inherits="e_nauka.Formularz_internetowy13" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:auto;">



        <div style="background-color:#ff8454;border-radius:20px;border-style:solid;border-color:#141414;margin-top:70px; width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;">

            <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:55px;">Zestaw demonstracyjny</h1>

        </div>

<div style="text-align:left;margin-left:20%;">

        <div style="display:flex;justify-content:left;margin-top:40px;">
            <h2 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:50px;">Wylosowałeś lekcję: </h2>

            <style>.labelDemo { font-size:50px;font-family: Montserrat, sans-serif;font-weight: normal;margin-top:-8px;margin-left:30px;color:#ad380a;} </style>      
            <asp:Label ID="TytulLekcji_Demo" runat="server" Text="test" CssClass="labelDemo"></asp:Label>

        </div>


         <div style="display:flex;justify-content:left;margin-top:30px;">
            <h2 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:50px;">Poziom trudności: </h2>

                 
            <asp:Label ID="Trudnosc_Demo" runat="server" Text="test" CssClass="labelDemo"></asp:Label>

        </div>


        <div style="display:flex;justify-content:left;margin-top:30px;">
            <h2 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:50px;">Moduł: </h2>

                
            <asp:Label ID="Modul_Demo" runat="server" Text="test" CssClass="labelDemo"></asp:Label>

        </div>

</div>


 

    <div style="display:block;text-align:center;margin-top:50px;">


       <style>.btnStart { min-width:40%; font-size:35px;font-family: Montserrat, sans-serif;font-weight: normal;color:black; border-radius:5px;opacity:1;margin-bottom:30px;}
       </style>
         <asp:ScriptManager runat="server" />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
     <ContentTemplate> 
       <asp:Button ID="Rozpocznij_Demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" BorderWidth="3px" Text="Rozpocznij lekcję" BackColor="#ff8454" CssClass="btnStart" OnClick="Rozpocznij_Demo_Click"  />
               </ContentTemplate>
</asp:UpdatePanel>      
	 </div>




   <div style="display:block;text-align:center;">


       <style>.btnContact { min-width:40%; font-size:35px;font-family: Montserrat, sans-serif;font-weight: normal;color:black; border-radius:5px;opacity:0.8;margin-bottom:200px;}
       </style>

       <asp:Button ID="Wroc_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414"  BorderWidth="3px" Text="Wróć" BackColor="#ff8454" CssClass="btnContact" OnClick="Wroc_demo_Click"  />
                   
	 </div>




    </div>
</asp:Content>
