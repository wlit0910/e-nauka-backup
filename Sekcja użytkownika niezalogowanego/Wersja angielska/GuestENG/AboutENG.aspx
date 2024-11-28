<%@ Page Title="About Us" Language="C#" MasterPageFile="~/GuestENG/SiteENG.Master" AutoEventWireup="true" CodeBehind="AboutENG.aspx.cs" Inherits="e_nauka.GuestENG.Formularz_internetowy12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <main style="height:auto;">
<div>
   <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal ;font-size:55px;">About Us</h1>
</div>
<div style="width:auto;height:auto;margin-top:35px;text-align:center;justify-content:center; ">
   <img src="../img/icon-about.png" alt="envelope" style="width:120px;height:120px;margin-top:0px;margin-bottom:50px;opacity:0.8;"> 

</div> 
   <div style="display:flex;">
      <div style="width:35%;height:50%;border-style:solid;border-color:black;border-width:3px;margin:0px 0px 50px 200px;">
         <h3 style="font-family: Montserrat , sans-serif;font-weight:bold;margin:15px 15px 0px 15px;">An interesting way to learn</h3>
         <h5 style="font-family: Montserrat, sans-serif;padding:5px 5px 0px 15px; " >What does this mean?</h5>
         <p style="font-family: Montserrat, sans-serif;padding:5px 15px 0px 15px;text-align:justify;">Our service focuses on interactivity and a practical approach to learning. Each lesson is designed so that you can immediately apply theory to practice. Thanks to programming tasks of varying difficulty, you can gradually
             improve your skills. We also offer simulations of real problems that you will encounter in the work of a programmer, which will allow you to better prepare for the future.
         </p>
      </div>
      <div style="width:auto;height:auto;margin-left:100px;margin-top:100px;"> 
          <img src="../img/pic1-about.jpg" alt= "envelope" style="width:80%;height:90%;margin-top:0px;margin-bottom:0px;opacity:0.9;margin-right:-400px;"> </div>
   </div>
   <div style="display:flex;margin-top:50px;"> 
   <div style="width:45%;height:40%;margin-left:100px;margin-top:100px;margin-right:-50px; "> <img src="../img/pic2-about.png" alt="envelope" style="width:85%;height:65%;margin-top:-10px;margin-bottom:50px;opacity:0.9;"> </div>
   <div style="width:30% ;height:50%;border-style:solid;border-color:black;border-width:3px;margin-left:100px;margin-bottom:50px;">
      <%--margin-left--%> <h3 style="font-family: Montserrat, sans-serif;font-weight:bold;margin:15px 15px 0px 15px;">Selected materials and tasks</h3> 
      <h5 style="font-family: Montserrat, sans- serif;padding:5px 5px 0px 15px;" >So what?</h5>
      <p style="font-family: Montserrat, sans-serif;padding:5px 15px 15px 15px;text-align:justify;">The available materials have been carefully selected to cover the most important aspects of programming – from the basics to advanced topics. Each topic is illustrated with examples and tasks that help consolidate the knowledge gained. 
          We regularly update our content to provide the latest information on tools, technologies and best practices in the IT industry.
      </p>
   </div>
</div>
<div style="display:flex;margin-bottom:70px;margin-top:50px;">
   <div style="width:30%;height:50%; border-style:solid;border-color:black;border-width:3px;margin:0px 0px 50px 200px;">
      <h3 style="font-family: Montserrat, sans-serif;font-weight:bold;margin: 15px 15px 0px 15px;">Mission of the e-science website</h3>
      <h5 style="font-family: Montserrat, sans-serif;padding:5px 5px 0px 15px;" >What is most important?</h5>
      <p style="font-family: Montserrat, sans-serif;padding:5px 15px 15px 15px;text-align:justify;">Our mission is to create a space where everyone, regardless of their level of advancement, can develop their programming skills. We focus on accessibility and quality - we want learning programming 
          to be enjoyable, effective and accessible to everyone. We strive to make our service a place that helps discover and develop a passion for technology.
      </p>
   </div>
   <div style="width:auto;height:auto;margin-left:100px;margin-top:100px;"> <img src="../img/pic3-about.jpg" alt= "envelope" style="width:75%;height:85%;margin-top:0px;margin-bottom:50px;opacity:0.9;margin-right:-400px;"> </div>
</div>
</main>
</asp:Content>
