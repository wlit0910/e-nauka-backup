<%@ Page Title="Polimorfizm, dziedziczenie. Teoria" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="L09.aspx.cs" Inherits="e_nauka.User.Formularz_internetowy18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

      <div style="height:auto;">


       <div style="background-color:#ff8454;border-radius:20px;border-style:solid;border-color:#141414;margin-top:70px; width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;margin-bottom:40px;">
            <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:55px;">Teoria do zadania</h1>
      </div>

        <div style="width:auto;height:auto;margin-left:100px;margin-right:100px;text-align:left;">
    <div style="height:auto;">
        <style>.labelDemo { font-size:55px;font-family: Montserrat, sans-serif;font-weight: normal;margin-top:-8px;margin-left:30px;color:black;} </style>      
        <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Dziedziczenie i polimorfizm w C++" CssClass="labelDemo"></asp:Label>



        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      <span style="font-weight:bold;">Dziedziczenie</span>  to mechanizm w programowaniu obiektowym, który pozwala na tworzenie nowych klas na podstawie istniejących. 
            Nowa klasa, zwana klasą pochodną, dziedziczy właściwości i metody klasy bazowej. Dzięki dziedziczeniu możemy ponownie używać kodu, co zwiększa jego modularność i ułatwia zarządzanie.<br><br>
            <span style="font-weight:bold;">Polimorfizm</span>  (wielopostaciowość) to cecha programowania obiektowego, która pozwala na różne zachowanie tej samej metody w zależności od obiektu, który ją wywołuje. Polimorfizm jest ściśle związany z dziedziczeniem i metodami wirtualnymi.
    </p>





                <p style="font-family: Montserrat, sans-serif;font-weight: bold;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       Przykład polimorfizmu         
    </p>


      <div style="width:auto;height:640px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/6iah2axz91UeLDbOUZww"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>

                <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       W powyższym przykładzie klasa Pies dziedziczy metodę jedz z klasy Zwierze, a także definiuje własną metodę szczekaj.          
    </p>


                    <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Polimorfizm w C++
            </p>

                <p style="font-family: Montserrat, sans-serif;font-weight: bold;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       Przykład polimorfizmu         
    </p>


              <div style="width:auto;height:930px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/mxpPiaURQhFRY5b6oyro"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>



      <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
          W tym przykładzie metoda wydajDzwiek jest zdefiniowana jako wirtualna w klasie Zwierze i przedefiniowana w klasach Pies i Kot. Dzięki polimorfizmowi, wywołanie wydajDzwiek na wskaźniku do klasy Zwierze powoduje wywołanie odpowiedniej metody w klasach pochodnych.
    </p>




          <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
            Zastosowanie dziedziczenia i polimorfizmu
            </p>
                                


             <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Dziedziczenie</span> pozwala na tworzenie bardziej złożonych hierarchii klas, co ułatwia organizację kodu i ponowne użycie istniejących klas.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Polimorfizm</span> umożliwia tworzenie elastycznych i rozszerzalnych systemów, w których obiekty różnych klas mogą być traktowane jednolicie, ale zachowywać się w specyficzny dla siebie sposób.</li>
            </ol>




  </div>


                            <div style="display:block;text-align:right;margin-top:50px;margin-right:40px;">


       <style>.btnTask1 { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
       

       <asp:Button ID="Zadanie_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Przejdź do zadania" BackColor="#ff8454" CssClass="btnTask1" OnClick="Zadanie_demo_Click"  />
       
                   
	 </div>


<div style="display:block;text-align:right;margin-top:20px;margin-right:40px;">
    <style>.btnTask { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:200px;}</style>
    <asp:Button ID="Wroc_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Wróć" BackColor="#ff8454" CssClass="btnTask" OnClick="Wroc_demo_Click"    />
 </div>


            </div>
            </div>

</asp:Content>
