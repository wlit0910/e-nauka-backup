﻿<%@ Page Title="Pętle, tablice" Language="C#" MasterPageFile="~/Task.Master" AutoEventWireup="true" CodeBehind="T04.aspx.cs" Inherits="e_nauka.Formularz_internetowy119" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TaskContent" runat="server">
                <style>
.col {
  overflow: auto;
  max-height: 100vh;
  width: 33.33%;
  border-style:solid;border-color:#7d7c7a;border-width:1px;border-top-width:0px;
}
    </style>

    <div style="height:auto; display: flex;  margin: 0;padding: 0;min-width: 100%;min-height: 100%;">
        <section class="col">

            <div style="text-align:center;">
             <p  style="font-family: Montserrat, sans-serif;font-weight: bold;font-size:20px;margin-top:20px;margin-bottom:20px;">Treść zadania</p>
            </div>

<%---------------------------------------------------- TASK LOG -----------------------------------------------------%>
    <div style="height:590px;max-height:600px; ">

                <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;font-size:18px;text-decoration-line:underline;text-decoration-thickness:1px;text-underline-offset:5px;">
                    Zadanie - Pętle, tablice.
                </p>

              <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                 Dokończ program, który poprosi użytkownika o wprowadzenie 5 liczb, a następnie wyświetli te liczby w odwrotnej kolejności.
                  </p>

                      <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;">
                 Po uzupełnieniu wymaganych pól, wciśnij przycisk "Sprawdź kod". Gdy wprowadzisz liczbę do konsoli, naciśnij jeszcze raz przycisk "Sprawdź kod".</p>



                 
              

      <%--  LABELE NA SUCCESS I FAIL--%>

             <style>.label-success {font-family: Montserrat, sans-serif;
    font-weight: normal;
    letter-spacing: 2px;
    font-size:18px;}



             </style>

        <div style="margin-left:40px;margin-top:50px;">
               <asp:Label ID="Label_Result" runat="server" Text="" CssClass="label-success" ForeColor="Black" Visible="false"></asp:Label>


             </div>
    </div>

<%-------------------------------------------------------------------------------------------------------%>



    <div style="display:block;text-align:right;margin-top:50px;margin-right:10px;">
    <style>.btnCheck { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:50px;}</style>
    <asp:Button ID="Wroc_teoria" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Wróć do teorii" BackColor="#ff8454" CssClass="btnCheck" OnClick="Wroc_teoria_Click"   />
 </div>

    <label hidden>test</label><br>
    <label hidden>test</label><br>
    <label hidden>test</label><br>
    <label hidden>test</label><br>
    <label hidden>test</label><br>
    <label hidden>test</label><br>
</section>



<section class="col">

        <style>

        .compiler {
            width: 100%;
            max-height:600px;  /*UWAGA - 600px DOBRZE WYGLADA*/
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
        }
        .header {
            background-color: #e0e0e0;
            padding: 10px;
            border-bottom: 1px solid #ccc;
            font-weight: bold;
        }
        .code-container {
            display: flex;
            padding: 10px;
            overflow-x: auto;
        }
        .line-numbers {
            text-align: right;
            padding-right: 10px;
            border-right: 1px solid #ccc;
            color: #888;
            user-select: none;
        }
        .code {
            padding-left: 10px;
            
        }
        .keyword {
            color: #0000ff;
            font-weight: bold;
        }
        .class-name {
            color: #008000;
        }
        .function-name {
            color: #000080;
        }
        .number {
            color: #ff0000;
        }
        .comment {
            color: #808080;
            font-style: italic;
        }
       .other-code {
            font-family: 'Courier New', Courier, monospace;
        }


    </style>



           <div style="text-align:center;">
             <p  style="font-family: Montserrat, sans-serif;font-weight: bold;font-size:20px;margin-top:20px;">Kompilator</p>
            </div>



    <div style="font-family: 'Courier New', Courier, monospace;
            background-color: #f0f0f0;
            display: flex;
            height: auto;
            width:100%">

<%---------------------------------------------------- COMPILER -----------------------------------------------------%>
   <div class="compiler">
  <div class="header">reverse_array.cpp</div>
        <div class="code-container">
            <div class="line-numbers">
                1<br>2<br>3<br>4<br>5<br>6<br>7<br>8<br>9<br>10<br>11<br>12<br>13<br>14<br>15<br>16<br>17<br>18<br>19<br>20<br>21<br>22<br>
            </div>
<div class="code">
                <span class="keyword">#include</span> &lt;iostream&gt;<br>
                <span class="keyword">using</span> <span class="keyword">namespace</span> std;<br><br>
                <span class="keyword">int</span> <span class="function-name">main</span>() {<br>
                &nbsp;&nbsp;<span class="keyword">int</span> liczby[<span class="number">5</span>];<br><br>
                &nbsp;&nbsp;<span class="comment">// Pobieranie liczb od użytkownika</span><br>
                &nbsp;&nbsp;<asp:TextBox ID="Task1" runat="server"  BorderWidth="0"  Width="35px" BackColor="#f0f0f0" ForeColor="blue" CssClass="keyword"></asp:TextBox><%-- zadanie wpisz - for --%> (<span class="keyword">int</span> i = <span class="number">0</span>; i &lt; <span class="number">5</span>; 
    <asp:TextBox ID="Task2" runat="server"  BorderWidth="0"  Width="35px" BackColor="#f0f0f0" ForeColor="black" CssClass="other-code"></asp:TextBox><%-- zadanie wpisz - i++ --%>) {<br>
                &nbsp;&nbsp;&nbsp;&nbsp;cout &lt;&lt; <span class="number">"Podaj nieujemna liczbe: "</span>;<br>
                &nbsp;&nbsp;&nbsp;&nbsp;cin &gt;&gt; liczby<asp:TextBox ID="Task3" runat="server"  BorderWidth="0"  Width="35px" BackColor="#f0f0f0" ForeColor="black" CssClass="other-code"></asp:TextBox><%-- zadanie wpisz - [i] --%>;<br>
                &nbsp;&nbsp;}<br><br>
                &nbsp;&nbsp;<span class="comment">// Wyświetlanie liczb w odwrotnej kolejności</span><br>
                &nbsp;&nbsp;<asp:TextBox ID="Task4" runat="server"  BorderWidth="0"  Width="35px" BackColor="#f0f0f0" ForeColor="blue" CssClass="keyword"></asp:TextBox><%-- zadanie wpisz - for --%> (<span class="keyword">int</span> i = <span class="number">4</span>; i &gt;= <span class="number">0</span>; 
    <asp:TextBox ID="Task5" runat="server"  BorderWidth="0"  Width="35px" BackColor="#f0f0f0" ForeColor="black" CssClass="other-code"></asp:TextBox><%-- zadanie wpisz: "i--" --%>) {<br>
                &nbsp;&nbsp;&nbsp;&nbsp;cout &lt;&lt; liczby<asp:TextBox ID="Task6" runat="server"  BorderWidth="0"  Width="35px" BackColor="#f0f0f0" ForeColor="black" CssClass="other-code"></asp:TextBox><%-- zadanie wpisz - [i] --%> &lt;&lt; <span class="number">" "</span>;<br>
                &nbsp;&nbsp;}<br><br>
                &nbsp;&nbsp;<span class="keyword">return</span> <span class="number">0</span>;<br>
                }
            </div>
        </div>
    </div>
        


    </div>

    <%-------------------------------------------------------------------------------------------------------%>

    <div style="display:block;text-align:right;margin-top:50px;margin-right:10px;">

    <asp:Button ID="Sprawdz_kod" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Sprawdź kod" BackColor="#ff8454" CssClass="btnCheck" OnClick="Sprawdz_kod_Click"   />
 </div>

    <label hidden>test</label><br>
    <label hidden>test</label><br>
    <label hidden>test</label><br>
    <label hidden>test</label><br>
    <label hidden>test</label><br>
    <label hidden>test</label><br>


</section>
<section class="col">
               <div style="text-align:center;">
             <p  style="font-family: Montserrat, sans-serif;font-weight: bold;font-size:20px;margin-top:20px;">Output</p>
            </div>

<%---------------------------------------------------- OUTPUT LOG -----------------------------------------------------%>
    <div style="background-color:black;height:595px;max-height:600px; ">

    <style>.label-output {font-family: 'Courier New', Courier, monospace;
    font-weight: bold;
    margin-top:15px;
    margin-bottom:0px;
    margin-left:10px;
    color:#ff8454;}

   .label-rest {margin-top:-5px;font-family: 'Courier New', Courier, monospace;font-weight: bold;margin-left:10px;color:#ff8454;margin-bottom:0px;}


    </style>
          
        <label hidden>test</label><br> <%--margin nie działał, trzeba było sobie inaczej poradzić xD--%>

        <%--TO MA BYC VISIBLE=FALSE === HIDDEN NA POCZATKU--%>

        <asp:Label ID="Output" runat="server" Text="Podaj nieujemna liczbe:" CssClass="label-output" Visible="false" ></asp:Label> <asp:TextBox ID="Param" runat="server"  BorderWidth="1"  Width="45px" BackColor="black" ForeColor="#ff8454" Text="" CssClass="label-output" BorderColor="Orange" BorderStyle="Solid" Visible="false"></asp:TextBox>
        <br><asp:Label ID="Output2" runat="server" Text="Podaj nieujemna liczbe:" CssClass="label-output" Visible="false" ></asp:Label> <asp:TextBox ID="Param2" runat="server"  BorderWidth="1"  Width="45px" BackColor="black" ForeColor="#ff8454" Text="" CssClass="label-output" BorderColor="Orange" BorderStyle="Solid" Visible="false"></asp:TextBox>
        <br><asp:Label ID="Output3" runat="server" Text="Podaj nieujemna liczbe:" CssClass="label-output" Visible="false" ></asp:Label> <asp:TextBox ID="Param3" runat="server"  BorderWidth="1"  Width="45px" BackColor="black" ForeColor="#ff8454" Text="" CssClass="label-output" BorderColor="Orange" BorderStyle="Solid" Visible="false"></asp:TextBox>
        <br><asp:Label ID="Output4" runat="server" Text="Podaj nieujemna liczbe:" CssClass="label-output" Visible="false" ></asp:Label> <asp:TextBox ID="Param4" runat="server"  BorderWidth="1"  Width="45px" BackColor="black" ForeColor="#ff8454" Text="" CssClass="label-output" BorderColor="Orange" BorderStyle="Solid" Visible="false"></asp:TextBox>
        <br><asp:Label ID="Output5" runat="server" Text="Podaj nieujemna liczbe:" CssClass="label-output" Visible="false" ></asp:Label> <asp:TextBox ID="Param5" runat="server"  BorderWidth="1"  Width="45px" BackColor="black" ForeColor="#ff8454" Text="" CssClass="label-output" BorderColor="Orange" BorderStyle="Solid" Visible="false"></asp:TextBox>
        <br><asp:Label ID="Output6" runat="server" Text="Podaj nieujemna liczbe:" CssClass="label-output" Visible="false" ></asp:Label> <asp:TextBox ID="Param6" runat="server"  BorderWidth="1"  Width="45px" BackColor="black" ForeColor="#ff8454" Text="" CssClass="label-output" BorderColor="Orange" BorderStyle="Solid" Visible="false"></asp:TextBox> 


          
    </div>

<%-------------------------------------------------------------------------------------------------------%>

  <div style="display:block;text-align:right;margin-top:50px;margin-right:10px;">

    <asp:Button ID="Next" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Przejdź dalej" BackColor="#ff8454" CssClass="btnCheck" OnClick="Next_Click"   />
 </div>

    <label hidden>test</label><br>
    <label hidden>test</label><br>
    <label hidden>test</label><br>
    <label hidden>test</label><br>
    <label hidden>test</label><br>
    <label hidden>test</label><br>

</section>

    </div>
</asp:Content>
