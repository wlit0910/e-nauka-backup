<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/GuestENG/SiteENG.Master" AutoEventWireup="true" CodeBehind="DefaultENG.aspx.cs" Inherits="e_nauka.GuestENG.Formularz_internetowy1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <main>
<div class="text-center" style="height:auto;margin-top:40px">  <%--height auto--%>

    
    <h1 class="display-4 text-center" style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;">Welcome to&ensp;&hairsp;
      
         <i class="fa-solid fa-code" style="color: #000000;font-size:60px;margin-top:8px;"></i><p style="    font-family: Montserrat, sans-serif;
    font-weight: normal;
    letter-spacing: 2px;
    font-size:55px;
    
    ">&hairsp;&hairsp;&hairsp;e-nauka</p>

    </h1>
        

    <p  style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:large;">Continue your course or start a new one.</p>

        <div style="text-align: center;">
        <img src="../img/line1.png" alt="curved line" style="width:400px;height:70px;margin-top:-10px;margin-bottom:15px;">
    </div>

<div style="display:flex;text-align:left;
 max-width: fit-content;
  margin-left: auto;
  margin-right: auto;">



<div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/user-card.png" alt="Card image cap" style="width:70%;height:70%;margin:10px 0px 0px 25px;">
  <div class="card-body">
    <h5 class="card-title">Log In</h5>
    <p class="card-text">Access your courses, progress, and more.</p>
    <a href="LoginENG" class="btn btn-dark">Log In</a>
  </div>
</div>

    <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/nonUser-card.png" alt="Card image cap" style="width:70%;height:70%;margin:10px 0px 0px 25px;">
  <div class="card-body">
    <h5 class="card-title">Register</h5>
    <p class="card-text">Start a new path to improving your skills.</p>
    <a href="RegisterENG" class="btn btn-dark">Register</a>
  </div>
</div>


        <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/demo-card.png" alt="Card image cap" style="width:70%;height:70%;margin:10px 0px 0px 25px;">
  <div class="card-body">
    <h5 class="card-title">Trial lesson</h5>
    <p class="card-text">Go through a random lesson and solve related quest.</p>
    <a href="DemoENG" class="btn btn-dark">Go to demo</a>
  </div>
</div>

    </div>

<div style="display:flex;text-align:left;
 max-width: fit-content;
  margin-left: auto;
  margin-right: auto;">



<div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/app-card.png" alt="Card image cap" style="width:70%;height:30%;margin:10px 0px 0px 25px;">
  <div class="card-body">
    <h5 class="card-title">Go to the site</h5>
    <p class="card-text">Get to know the e-learning site better and browse interesting content.</p>
    <a href="#" class="btn btn-dark">Browse e-nauka</a>
  </div>
</div>

    <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/about-card.png" alt="Card image cap" style="width:70%;height:30%;margin:10px 0px 0px 25px;">
  <div class="card-body">
    <h5 class="card-title">About Us</h5>
    <p class="card-text">Learn more about the e-nauka service and its creator. Give it a look.</p>
    <a href="AboutENG" class="btn btn-dark">About Us&hairsp;&hairsp;</a>
  </div>
</div>


        <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/contact-card.png" alt="Card image cap" style="width:70%;height:70%;margin:10px 0px 0px 25px;">
  <div class="card-body">
    <h5 class="card-title">Contact Us</h5>
    <p class="card-text">See an error? Want to improve something or have a suggestion? Write to us!</p>
    <a href="ContactENG" class="btn btn-dark">Contact</a>
  </div>
</div>



</div>

        <div style="margin-bottom:150px;">

    </div>


    </div>

</main>

</asp:Content>
