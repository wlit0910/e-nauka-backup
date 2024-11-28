<%@ Page Title="Final Project No. 1 C++" Language="C#" MasterPageFile="~/UserENG/UserEnglish.Master" AutoEventWireup="true" CodeBehind="EProjectC01M01.aspx.cs" Inherits="e_nauka.UserENG.Formularz_internetowy18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div style="height:auto;">
        <div class="text-center" style="height:auto;margin-top:40px">  <%--height auto--%>

    
    <style>.label-user {font-family: Montserrat, sans-serif;
    font-weight: normal;
    letter-spacing: 2px;
    font-size:50px;}</style>


    <h1 class="display-4 text-center" style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;font-size:50px;">Final project from the module:&ensp;
      
        <asp:Label ID="Project_module" runat="server" Text="@nazwa-modułu" CssClass="label-user"></asp:Label>            

    </h1>
    </div>

        <div class="text-center" style="height:auto;margin-top:30px;text-align:center;">
                     <p  style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:30px;margin-top:40px;">Test your knowledge of the 3 lessons you recently completed:</p>

                  <ul style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:30px;margin-right:40px;margin-top:10px;  display: inline-block;font-size:25px;
  text-align: left;">

                      <li style="margin-bottom:10px;font-weight:500;"><asp:Label ID="Lesson_1" Font-Size="25px" runat="server" Text="@nazwa-modułu" CssClass="label-user"></asp:Label></li>
                      <li style="margin-bottom:10px;font-weight:500;"><asp:Label ID="Lesson_2" Font-Size="25px" runat="server" Text="@nazwa-modułu" CssClass="label-user"></asp:Label></li>
                      <li style="margin-bottom:10px;font-weight:500;"><asp:Label ID="Lesson_3" Font-Size="25px" runat="server" Text="@nazwa-modułu" CssClass="label-user"></asp:Label></li>
                 </ul>
        </div>

        <div class="text-center" style="height:auto;margin-top:30px;text-align:center;margin-left:40px;margin-right:40px;">
             <p  style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:25px;margin-top:20px;margin-left:40px;margin-right:40px;text-align:justify;">
                 For this purpose, you can write a programming project, the topic and requirements of which are given below. You can send the resulting code in the <span style="font-weight:500">.cpp / .txt</span> format to the administrator, who will check the code, evaluate it and send you a reply. You can also check your code yourself in the <a href="EProjectC01M01.aspx#compiler" style="color:#ff8454;">online compiler</a> at the bottom of the page.
             </p>
       </div>

                <div class="text-center" style="height:auto;margin-top:30px;text-align:center;">
                     <p style="font-family: Montserrat, sans-serif;font-weight: 500;font-size:30px;margin-top:50px;"><span style="background-color:#fcd9cc;">Final project topic: "BMI (Body Mass Index) Calculator"</span></p>
               </div>

               <div style="height:auto;margin-top:30px;text-align:left;margin-left:80px;margin-right:40px;">
                     <p style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:30px;margin-top:50px;"><span style="font-weight:500;">Description:</span><span style="font-size:25px;">&ensp;&ensp;Create a simple C++ application that calculates the user's BMI based on the entered weight and height.
The program should also display an appropriate message, informing the user whether their BMI is within the norm or suggests overweight or underweight.

The project aims to make practical use of variables, constants, data types, mathematical operators and conditional statements. Project requirements:</span></p>
               
             <ul style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;margin-top:10px;  display: inline-block;font-size:25px;
  text-align: left;">

                      <li style="margin-bottom:10px;font-weight:normal;">The program must allow the user to enter height (in meters) and weight (in kilograms).</li>
                      <li style="margin-bottom:10px;font-weight:normal;">Calculate BMI using the formula BMI = (weight) / (height^2).</li>
                      <li style="margin-bottom:10px;font-weight:normal;">Use appropriate data types to store weight, height, and calculated BMI values.</li>
                      <li style="margin-bottom:10px;font-weight:normal;">Use if, if-else statements to check which BMI range the user belongs to: <a href="https://pl.wikipedia.org/wiki/Wska%C5%BAnik_masy_cia%C5%82a">BMI</a> </li>
                      <li style="margin-bottom:10px;font-weight:normal;">The program should display an appropriate message depending on the calculated BMI.</li>
                      <li style="margin-bottom:10px;font-weight:normal;">Use mathematical operators for calculations and logical operators in conditional statements.</li>
                 </ul>
               
               

               </div>


<div style="display:block;text-align:center;margin-top:100px;">


     <style>.btnLogout { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:10px;}</style>
     

                 <style>.label-success {font-family: Montserrat, sans-serif;
    font-weight: normal;
    letter-spacing: 2px;
    font-size:18px;
}

             </style>
    <asp:FileUpload ID="FileUpload1" runat="server" />
     <asp:Button ID="Przeslij_projekt" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Upload file" BackColor="#ff8454" CssClass="btnLogout" OnClick="Przeslij_projekt_Click"  /><br>
    <asp:Label ID="ValidFile" runat="server" Text="" CssClass="label-success"></asp:Label> 
     
                 
    <div class="text-center" style="height:auto;margin-top:80px;text-align:center;margin-bottom:50px;">
             <p  style="font-family: Montserrat, sans-serif;font-weight: 500;font-size:30px;margin-top:25px;"><span id="compiler" style="background-color:#f5e8c9;">Online compiler - check your code here</span></p>
        </div>

    <div style="height:600px;">
    <iframe width="90%" height="700px" src="https://godbolt.org/e#z:OYLghAFBqd5QCxAFwE4FN0BoCWIIDGAtgIYDW6AgqsAM4gDkAtACIDCAspQNICiA%2BgCEAqgEkAMi34AVAJoAFXgFIAzCwBK6ADYB1HMgQt0AI1EA7AGYB7BlgJWiABxxb0qcSTPAAriWDpRABMQAiUAJkFwwTtvWmQHAHlvZEdkgDEXdDMSInQUBHR%2BdAAPdAJkkmNXLAtM%2Blh0QP0rVCCQADYazLaARgAWLtds3JBSHDMAOgJHRyxQBlscWnMCLW9AxsYABkXaDhJxgGUrb1QCPIYe3YTHLO3bLU9gNoWASiwIRubW4J7BgN%2BAFZ/sM8pxyOhxEtkLQJshisg5oxHKgrAArMrICC0BAkW60V5KLaUImUYgQ/hEcY4IjeIj8DAAR28OAwgQgADVeOpDqIEgA5ADUKgmgMJxNJJECgSKpXKyEqrmxuPxzJIGFJgq1gpxePQtAA9ARWat0FMZprtbr8QaMAQFV5XObHJatWNJtNHOKScSFTR0Mh%2BFpxmQgzhjKh1Th9cq9bQ1RridrBRYiMhAt7dis1htggwdrg9gczMdTud7oWbnd8w8nm1yRR3p8mvEfiAwv9ep1akMcnkMLQTmd9QaClotFY4QikQxSQAJbQTrCCgDuLS0gTAYFJpKYe6YpOkBUFvDMgVJWbMq3Wmxrhf2RyH5cu11uZgrjy89aiUSbX1bbQqJ2vwAJwgn2IA4JOnozpe165hWSwPiWT4XFclZvh%2BdZ5gwf4ti0bQDD2ALtls4EjFBEwILBhbZjeeYFkhxalsOjDoUsVbvnen7PDhrzvEs4IUPIqIYvaFZoiAfxmOgK4ZK4bRhD07xaIwgK2FxBZWIw0gYOggrhCo6HIPc/FYGQpGin0ADsIF9ICYRbICNl2c5WCqQwfQaRW2kLFg9BkSZNZNjAUChRASD2BsvD4aguD4MRoKjMWzo1FYZjIIcBAkK4UlEelyDCLQ6DyMUEkdO5TwhD%2BET%2BdomJQe%2BnxnmwVhrEQ75/FkgRQjJ/J0sYbggAAHFgjhWLQ%2BiNa17WdWNE1TelvXoP1RCDagI11a49qNYcfrIDNdJzcV23ILt%2B3Lat62bXE6oHW1R1Sf5F3jCtA1DcN7yDmWFyGeM8H6aobCpsgRotGaCCqMoEoSmEKj/TmgNhGElGQ8jO7EuMyCCu6ECvAZ1mREm2ogyAIAoljEDhGE8n6fYGVZDCIBKICbBmEohMcyw1PLv4gaBCQCp44SKhEyS1nc8SuHuWp3kvlg2nuqlQU7E2kVWNFsXxRAiUQUJkLQrC8KItYGVZTleT9GlGVFSVZV3pJfw8SEpAUFtDXpfg3WHR1T3dZd70bT0fzjZNZ3pT7c2h4tZgB2tQ3B%2B7O3pXtd2R09J0eyWL19YHUl/LdqD3bNGc5298dB8p/moYwDaFFSZg0nSDLoMyrKNJy3K8gKwqit6pIouimKxvi/fElKMolGUFRVOgEAGIUU/yoq6CuoKlGemvSuemPlB%2BnzYZmKGwYRlGMYL7K08KrPa8gxmF4qbLWCabY2n61CcRG9OKvSxFIQa%2BgGK3xta6xGAOVChoxwTinCbAq5tcpW1NoVYqpVyodmdqECIUQk7hyat7B6vsupnjjtdTo0dcHpxDgtXBJChqdEzsnbOacCHHXqow1ORdaEbXoftShz07pcI6F9Gus5iQLnHFYZca5UAbi3BjSg%2B4DzEiPPpU854paPwYOpZ%2BPkQDgJ%2BpAxck5jZYB/mrf%2BmtgF4B1pkJKG8ZjW0ytlBB%2BUbYoPtgWSSQEME1WiAw3BXsWosL9sQ16V0hpgXIdNYJVCw6NUEWBfx51mElwLmw3BHDkAJP4UXPhhcslhLziBYRP1GB/SvIjAyKhgZxAwDkKGO44YIxvFUtgtTxjAAaTDSgcRgggHaV4QUB8BZC3xhzMWyZelkxwBYWp6Acjr1mVTZG%2BjhyGIkTA6mIsJnaliB0wUohsaqBYDqdM0y5k5GMN4Cw/B9BuEFi0IGBBcSoAaaLNeGBkCnDMKcvpAzgAQEORAGZBJlxAv4qoMWXMH4yy0XLLSkFoIOLMR8dWljWwgNsRBVGjj4GW1ccgu25UBg%2BKwbVJJntmqBD4f7QpFcQCROodE1J804lLTpddRJ6Tkm5JiTgnlBTc70sSbwvl%2BSEklNYrOJpFgzzoAsIKNICQEj8DnI0lQGxagyUVcq1V8jykA1af8rpPoelnP6WgfZwzBYkDxpC/VcNuozJhR5bRL8FaIqoqY0y7wChSiGnjcyIA%2BjDQmH0cNEbI2RthV5LARAQCAjIu63ytgAreuCh8cK4V1ZOEyHFax9hc2uA2sAHoWwgI9mQG4egEBjAVmMOMdUABPNitgG3ZFQE2hIxgxJBXQoW3IGUEhmC0C2u8GwrnADYDlLQ9B5YbFII6C4BYmh2jOgAN31BWJeyQ0KLAZh5AsJ9IydtahsCslr43y03agYwE10BGEXcAYMXhTI1EeHQDk0YVycVbbi5x%2BLHG21QQ7EA3iqqYMiLVE%2B9QoBJRBlgG9jBrI9BULhd4VhHC4LnUwXpxzINREcoKJgCQVDEYsFoeIr8b2oBwBsWDX1uWUvwSy2lQrrqxJjnwqJ7L2MJ35SnUVLKKVMM4Ry/j%2BS8ll3CUHd4aBMBSU0W63RDBBTFGGu0Jg7Q%2BhDIIAQQUZaJhkYgLpTABk4bKVsGY318yNgbUDRZQEIpnLtC2CBECYQQJbGssNLYqGSWMFjfGvoWwrLDRUCF5y4XIudGTYwVNIBApvrgLAJAJwUjJBAXAgDeUgPuPKkBeT6A6NPRXJGRwralPwtfowJIGXsZWAVepzT2ndP6cM8Z1qRa3DmZUCoV4VmfVYD9XZ/AmigvtnaBMYO4WwjtBmyoObPQOxxb8mmlFKXEAgB3Ri6x6o6DyE8NoQ4CArArndYW5wjxcGHZkloE7Z2uL9ocFdoapblt2Be3m/kEE/KXbzXVh752/1L2oHQPR%2BoIGjiMTArAS89pNC4rYJBeLctIOAx42wjtKqvoI9B8MsGIDwbTIhoaDAUNobMph7DjBcPpnw74ojJGyNMAo1RhWNG6NbsgO8VA3gMo0nQNIKwbUGPPUR7d47p3gfyyK6V8rlXYXKbvL5XgcpkgtDUxprTOngB6YMz0CYYRBQQDYL45cpmkZGQG%2Bm1W43bDxr60ZvrLvXeu50Sr%2BL/lEu2/Q0GwEhvARB%2BDyH4PnQPJoY9wivy1mg22TDQ5JyLl7KOUBOHxgYQHdSS2EmlTg3gqaMz1HmrMehs3smp7PoQA"></iframe>
        </div>




      <div class="text-center" style="height:auto;margin-top:250px;text-align:center;margin-left:40px;margin-right:40px;margin-bottom:50px;">
             <p  style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:25px;margin-top:20px;margin-left:40px;margin-right:40px;text-align:center;">
                 And if you've run into problems while creating your project, or are looking for a little more help...
             </p><br>
          <asp:Button ID="Pobierz_plik1" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Download the answer file" BackColor="#ff8454" CssClass="btnLogout" OnClick="Pobierz_plik1_Click"  />
       </div>

    <div style="height:200px;">
        
    </div>

</div>

    </div>

</asp:Content>
