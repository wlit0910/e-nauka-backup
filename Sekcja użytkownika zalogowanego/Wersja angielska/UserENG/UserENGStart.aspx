<%@ Page Title="Start" Language="C#" MasterPageFile="~/UserENG/UserEnglish.Master" AutoEventWireup="true" CodeBehind="UserENGStart.aspx.cs" Inherits="e_nauka.UserENG.Formularz_internetowy1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       

    <main>
<div class="text-center" style="height:auto;margin-top:40px">  <%--height auto--%>

    
    <style>.label-user {font-family: Montserrat, sans-serif;
    font-weight: normal;
    letter-spacing: 2px;
    font-size:55px;}</style>


    <h1 class="display-4 text-center" style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;">Hello&ensp;
      
        <asp:Label ID="User_param" runat="server" Text="@test" CssClass="label-user"></asp:Label>
        

    </h1>
        

    <p  style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:large;">Look around your account.</p>

        <div style="text-align: center;">
        <img src="../img/line1.png" alt="curved line" style="width:400px;height:70px;margin-top:-10px;margin-bottom:15px;">
    </div>

<div style="display:flex;text-align:left;
 max-width: fit-content;
  margin-left: auto;
  margin-right: auto;">



<div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/courses-user.png" alt="Card image cap" style="width:80%;height:70%;margin:10px 0px 0px 20px;">
  <div class="card-body">
    <h5 class="card-title">My courses</h5>
    <p class="card-text">View your courses, progress, and more.</p>
    <a href="UserENGCourse" class="btn btn-dark">View courses</a>
  </div>
</div>

    <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/continue-user.png" alt="Card image cap" style="width:80%;height:70%;margin:10px 0px 0px 20px;">
  <div class="card-body">
    <h5 class="card-title">Continue the course</h5>
    <p class="card-text">Continue a started course. The most recent course will be selected.</p>
    <a href="ContinueCourseENG" class="btn btn-dark">Go to the course</a>
  </div>
</div>


        <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/resources-user.png" alt="Card image cap" style="width:80%;height:70%;margin:10px 0px 0px 20px;">
  <div class="card-body">
    <h5 class="card-title">Resources</h5>
    <p class="card-text">Explore the resources provided within the lesson.</p>
    <a href="LearningResourcesENG" class="btn btn-dark">Browse resources</a>
  </div>
</div>

    </div>

<div style="display:flex;text-align:left;
 max-width: fit-content;
  margin-left: auto;
  margin-right: auto;">



<div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/user-card.png" alt="Card image cap" style="width:80%;height:35%;margin:10px 0px 0px 20px;">
  <div class="card-body">
    <h5 class="card-title">My account</h5>
    <p class="card-text">Check or update your account information.</p>
    <a href="UserAccountENG" class="btn btn-dark">View Account</a>
  </div>
</div>

    <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/about-card.png" alt="Card image cap" style="width:80%;height:35%;margin:10px 0px 0px 20px;">
  <div class="card-body">
    <h5 class="card-title">About the service</h5>
    <p class="card-text">Learn more about the e-learning service and its creator.</p>
    <a href="../GuestENG/AboutENG" class="btn btn-dark">About Us&hairsp;&hairsp;</a>
  </div>
</div>


        <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/contact-card.png" alt="Card image cap" style="width:80%;height:75%;margin:10px 0px 0px 20px;">
  <div class="card-body">
    <h5 class="card-title">Contact Us</h5>
    <p class="card-text">See an error? Want to improve something? Write to us!</p>
    <a href="../GuestENG/ContactENG" class="btn btn-dark">Contact</a>
  </div>
</div>



</div>

<div style="margin-bottom:100px;">



    <h1 class="display-4 text-center" style="font-family: Montserrat, sans-serif;justify-content:center;margin-top:70px;font-weight: 400;font-size:45px;margin-bottom:50px;">Active Users Ranking</h1>


    <div style="text-align:center;width:auto;">

        <asp:Chart ID="chartUserProgress" runat="server" Width="600px" Height="400px"  ToolTip="Progress of e-nauka Users" >
        <Series >
            <asp:Series Name="UserProgress" ChartType="Column" ></asp:Series>
        </Series>
        <ChartAreas>
        <asp:ChartArea Name="ChartArea1" ></asp:ChartArea>
        </ChartAreas>
        </asp:Chart>
        </div>


        
    </div>


    </div>


    </div>

</main>
</asp:Content>
