<%@ Page Title="Strona startowa" Language="C#" MasterPageFile="~/AdminSec/Admin.Master" AutoEventWireup="true" CodeBehind="AdminStart.aspx.cs" Inherits="e_nauka.AdminSec.Formularz_internetowy1" %>

<%@ Register Assembly="System.Web.DataVisualization" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<main style="height:auto;">

    <div class="text-center" style="height:auto;margin-top:40px">  <%--height auto--%>

    
    <style>.label-user {font-family: Montserrat, sans-serif;
    font-weight: normal;
    margin-top:4px;
    letter-spacing: 2px;
    font-size:50px;}</style>


    <h1 class="display-4 text-center" style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;">Panel administratora: &ensp;
      
        <asp:Label ID="User_param" runat="server" Font-Size="50px" ForeColor="Blue" Text="@test" CssClass="label-user"></asp:Label>
        


        

    </h1>
        </div>



    <h1 style="font-family: Montserrat, sans-serif;font-weight: 500;font-size:45px;margin-bottom:30px;margin-left:20px;text-align:center;margin-top:80px;">Administratorzy serwisu</h1>

    <div style="height:auto;display:flex;text-align:center;justify-content:center;">
       
        <div style="margin-left:auto;text-align:center;width:auto;border-color:black;border-width:3px;border-style:solid;border-radius:20px; margin-right:30px;">
            <img src="../img/admin-icon.png" alt="admin icon" style="width:60px;height:60px;margin-top:30px;">
            <h1 style="font-family: Montserrat, sans-serif;font-weight: 400;font-size:25px;margin-bottom:0px;text-align:center;margin-top:30px;margin-left:10px;margin-right:10px;color:blue;">wlitowczenko</h1>
            <h1 style="font-family: Montserrat, sans-serif;font-weight: 400;font-size:25px;margin-bottom:0px;text-align:center;margin-top:10px;margin-left:20px;margin-right:20px;color:black;">Weronika Litowczenko</h1>
            <h1 style="font-family: Montserrat, sans-serif;font-weight: 400;font-size:25px;margin-bottom:0px;text-align:center;margin-top:10px;margin-left:10px;margin-right:10px;color:blue;">wlit0910@gmail.com</h1>
            <h1 style="font-family: Montserrat, sans-serif;font-weight: 400;font-size:25px;margin-bottom:50px;text-align:center;margin-top:10px;margin-left:10px;margin-right:10px;color:blue;">+48 575 777 757</h1>
         </div>

         <div style="margin-right:auto;text-align:center;width:auto;border-color:black;border-width:3px;border-style:solid;border-radius:20px;">
             <img src="../img/admin-icon.png" alt="admin icon" style="width:60px;height:60px;margin-top:30px;">
         <h1 style="font-family: Montserrat, sans-serif;font-weight: 400;font-size:25px;margin-bottom:0px;text-align:center;margin-top:30px;margin-left:10px;margin-right:10px;color:blue;">hariska</h1>
            <h1 style="font-family: Montserrat, sans-serif;font-weight: 400;font-size:25px;margin-bottom:0px;text-align:center;margin-top:10px;margin-left:10px;margin-right:10px;color:black;">Harisa</h1>
            <h1 style="font-family: Montserrat, sans-serif;font-weight: 400;font-size:25px;margin-bottom:0px;text-align:center;margin-top:10px;margin-left:20px;margin-right:20px;color:blue;">hari091017@gmail.com</h1>
            <h1 style="font-family: Montserrat, sans-serif;font-weight: 400;font-size:25px;margin-bottom:50px;text-align:center;margin-top:10px;margin-left:10px;margin-right:10px;color:blue;">+48 111 111 111</h1>
         </div>

    </div>

<div style="border-top-style:solid;border-top-color:black;border-top-width:2px;margin-top:100px;">
    
        <h1 class="display-4 text-center" style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:50px;font-weight: 500;font-size:45px;margin-bottom:70px;">Statystyki dotyczące użytkowników serwisu:</h1>





            <div style="display:flex;">

 <div style="margin-left:auto;text-align:center;width:auto;margin-right:10px;">

     <h1 style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:35px;margin-bottom:20px;margin-left:20px;text-align:center;">Użytkownicy</h1>

<asp:Chart ID="chartPendingUsers" runat="server" Width="400px" Height="400px">
    <Series>
        <asp:Series Name="PendingToUsers" ChartType="Doughnut" BorderColor="Black" BorderWidth="2" LabelForeColor="Black"></asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1" Area3DStyle-Enable3D="true" Area3DStyle-LightStyle="Simplistic" Area3DStyle-Inclination="30" Area3DStyle-PointDepth="100" Area3DStyle-PointGapDepth="100" Area3DStyle-Rotation="35" Area3DStyle-WallWidth="20"></asp:ChartArea>
    </ChartAreas>
</asp:Chart>


</div>

 <div style="text-align:center;width:auto;margin-right:10px;">
     <h1 style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:35px;margin-bottom:20px;margin-left:20px;text-align:center;margin-right:10px;">Język</h1>

<asp:Chart ID="chartLangUsers" runat="server" Width="400px" Height="400px">
    <Series>
        <asp:Series Name="LangUsers" ChartType="Doughnut" BorderColor="Black" BorderWidth="2" LabelForeColor="Black"></asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea2"  Area3DStyle-Enable3D="true" Area3DStyle-LightStyle="Simplistic" Area3DStyle-Inclination="30" Area3DStyle-PointDepth="100" Area3DStyle-PointGapDepth="100" Area3DStyle-Rotation="20" Area3DStyle-WallWidth="20"></asp:ChartArea>
    </ChartAreas>
</asp:Chart>

</div>


 <div style="text-align:center;width:auto;margin-right:auto;">
     <h1 style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:35px;margin-bottom:20px;margin-left:20px;text-align:center;">Płeć</h1>

<asp:Chart ID="chartGenderUsers" runat="server" Width="400px" Height="400px">
    <Series>
        <asp:Series Name="GenderUsers" ChartType="Doughnut"  Label="#VALX: #PERCENT{P1}" LegendText="#VALX: #VAL"  BorderColor="Black" BorderWidth="2" LabelForeColor="Black"></asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea4" Area3DStyle-Enable3D="true" Area3DStyle-LightStyle="Simplistic" Area3DStyle-Inclination="30" Area3DStyle-PointDepth="100" Area3DStyle-PointGapDepth="100" Area3DStyle-Rotation="30" Area3DStyle-WallWidth="20"></asp:ChartArea>
    </ChartAreas>
</asp:Chart>

     </div>

</div>



 <div style="display:flex; margin-top:40px;text-align:center;">

      <div style="margin-right:auto;text-align:center;width:auto;margin-left:auto;">
                 <h1 style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:35px;margin-bottom:20px;text-align:center;">Wiek</h1>


          <asp:Chart ID="chartAgeGroups" runat="server" Width="400px" Height="400px">
    <Series>
        <asp:Series Name="AgeGroups"  ChartType="Doughnut" BorderColor="Black" BorderWidth="2" LabelForeColor="Black"></asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartAreaAgeGroups" Area3DStyle-Enable3D="true" Area3DStyle-LightStyle="Simplistic" Area3DStyle-Inclination="30" Area3DStyle-PointDepth="100" Area3DStyle-PointGapDepth="100" Area3DStyle-Rotation="30" Area3DStyle-WallWidth="20"></asp:ChartArea>
    </ChartAreas>
</asp:Chart>



      </div>

</div> 

</div>


<div style="border-top-style:solid;border-top-color:black;border-top-width:2px;margin-top:100px;">


    <h1 class="display-4 text-center" style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: 500;font-size:45px;margin-bottom:70px;">Statystyki dotyczące moderacji i rozwoju serwisu:</h1>

<div style="display:flex;">




     <div style="margin-left:auto;text-align:center;width:auto;margin-right:10px;">
         <h1 style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:35px;margin-bottom:20px;margin-left:20px;text-align:center;">Zasoby</h1>

         <asp:Chart ID="chartCoursesLessons" runat="server" Width="400px" Height="400px">
    <Series>
        <asp:Series Name="CoursesToLessons"  ChartType="Doughnut" BorderColor="Black" BorderWidth="2" LabelForeColor="Black"></asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartAreaCoursesLessons" Area3DStyle-Enable3D="true" Area3DStyle-LightStyle="Simplistic" Area3DStyle-Inclination="30" Area3DStyle-PointDepth="100" Area3DStyle-PointGapDepth="100" Area3DStyle-Rotation="30" Area3DStyle-WallWidth="20"></asp:ChartArea>
    </ChartAreas>
</asp:Chart>



      </div>





     <div style="margin-right:auto;text-align:center;width:auto;">

         <h1 style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:35px;margin-bottom:20px;margin-left:20px;text-align:center;">Sugestie</h1>
         <asp:Chart ID="chartSuggestions" runat="server" Width="400px" Height="400px">
    <Series>
        <asp:Series Name="Suggestions" ChartType="Doughnut" BorderColor="Black" BorderWidth="2" LabelForeColor="Black" ></asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea3" Area3DStyle-Enable3D="true" Area3DStyle-LightStyle="Simplistic" Area3DStyle-Inclination="30" Area3DStyle-PointDepth="100" Area3DStyle-PointGapDepth="100" Area3DStyle-Rotation="20" Area3DStyle-WallWidth="20"></asp:ChartArea>
    </ChartAreas>
</asp:Chart>

      </div>



</div>

</div>

<div style="border-top-style:solid;border-top-color:black;border-top-width:2px;margin-top:100px;">


     <h1 class="display-4 text-center" style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: 500;font-size:45px;margin-bottom:70px;">Rankingi:</h1>


<div style="display:flex;">
    <div style="margin-left:auto;text-align:center;width:auto;border-color:black;border-width:2px;border-style:solid;margin-right:50px;">

    <asp:Chart ID="chartUserProgress" runat="server" Width="600px" Height="400px"  ToolTip="Postęp użytkowników serwisu" >
    <Series >
        <asp:Series Name="UserProgress" ChartType="Column" ></asp:Series>
    </Series>
    <ChartAreas>

        <asp:ChartArea Name="ChartArea1" ></asp:ChartArea>
    </ChartAreas>
</asp:Chart>
        </div>





         <div style="margin-right:auto;text-align:center;width:auto;border-color:black;border-width:2px;border-style:solid;">
             
  <asp:Chart ID="chartCourseLessons" runat="server" Width="600px" Height="400px">
    <Series>
        <asp:Series Name="CourseLessons" ChartType="Column"></asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
    </ChartAreas>
</asp:Chart>


        </div>


  </div>  

    </div>

    <div style="height:200px;">

    </div>



</main>
</asp:Content>
