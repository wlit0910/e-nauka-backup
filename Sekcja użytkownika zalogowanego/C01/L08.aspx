<%@ Page Title="Klasy i obiekty. Teoria" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="L08.aspx.cs" Inherits="e_nauka.User.Formularz_internetowy17" %>
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
        <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Klasy i obiekty" CssClass="labelDemo"></asp:Label>



        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       Klasy i obiekty są podstawowymi elementami programowania obiektowego w C++. Klasa jest szablonem, który definiuje właściwości (pola) i zachowania (metody) obiektów. 
            Obiekt jest instancją klasy, czyli konkretnym egzemplarzem, który posiada własne wartości pól.
    </p>





            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Budowa klasy
            </p>

     <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
     Klasa jest definiowana za pomocą słowa kluczowego <code>class</code>, po którym następuje nazwa klasy i blok definiujący jej pola i metody:
    </p>

      <div style="width:auto;height:330px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/jgd74UWYAhC3YV7Dz6wJ"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>




                    <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Tworzenie obiektów
            </p>

                <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       Po zdefiniowaniu klasy możemy tworzyć jej obiekty:          
    </p>


              <div style="width:auto;height:220px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/jBkbC23Al6QIx05DinHk"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>



                    <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Konstruktory
            </p>

                <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       Konstruktory to specjalne metody, które są wywoływane automatycznie podczas tworzenia obiektu. Służą do inicjalizacji pól obiektu. Konstruktor ma taką samą nazwę jak klasa i nie zwraca żadnej wartości.<br><br>
                    <span style="font-weight:bold;">Przykład konstruktora:</span>          
    </p>


      <div style="width:auto;height:630px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/AyGdOSqQzchg5NseTErU"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>


           <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Hermetyzacja
            </p>

      <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       Hermetyzacja (encapsulation) to zasada programowania obiektowego, która polega na ukrywaniu szczegółów
          implementacji klasy i udostępnianiu tylko niezbędnych interfejsów do manipulacji danymi. Dzięki hermetyzacji dane są chronione przed nieautoryzowanym dostępem i modyfikacją.<br><br>
          <span style="font-weight:bold;">Przykład hermetyzacji:</span> 
    </p>

              <div style="width:auto;height:830px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/pMLkUT2ZeBpzW6VZSSRi"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>



                        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      W powyższym przykładzie pole saldo jest prywatne, co oznacza, że nie można go bezpośrednio modyfikować spoza klasy. 
                            Dostęp do saldo jest możliwy tylko za pomocą publicznych metod wplata, wyplata i sprawdzSaldo, co zapewnia kontrolę nad tym, jak saldo jest zmieniane1       
    </p>






          <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
               Zastosowania klas i obiektów
            </p>
                                
        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      Struktury są używane w wielu różnych kontekstach:          
    </p>


             <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Modularność i organizacja kodu:</span> Klasy pozwalają na podział kodu na mniejsze, logiczne jednostki, co ułatwia zarządzanie i utrzymanie dużych projektów.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Ponowne użycie kodu:</span> Dzięki dziedziczeniu, klasy mogą być rozszerzane i modyfikowane bez konieczności zmiany istniejącego kodu.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Modelowanie rzeczywistych obiektów:</span> Klasy umożliwiają tworzenie obiektów, które odzwierciedlają rzeczywiste byty, takie jak samochody, osoby czy konta bankowe.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Abstrakcja:</span> Klasy pozwalają na ukrycie szczegółów implementacji i eksponowanie tylko niezbędnych interfejsów, co upraszcza korzystanie z kodu.</li>
            </ol>


       <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
               Zastosowania hermetyzacji
            </p>
                                


             <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Bezpieczeństwo danych:</span> Hermetyzacja chroni dane przed nieautoryzowanym dostępem i modyfikacją, co zwiększa bezpieczeństwo aplikacji.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Kontrola dostępu: </span> Umożliwia kontrolowanie, które części kodu mogą modyfikować dane, co zapobiega błędom i niepożądanym zmianom.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Łatwość utrzymania:</span> Dzięki hermetyzacji, zmiany w implementacji klasy nie wpływają na kod korzystający z tej klasy, co ułatwia utrzymanie i rozwijanie aplikacji.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Modularność:</span> Hermetyzacja wspiera modularność kodu, co pozwala na łatwiejsze zarządzanie dużymi projektami.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Ukrywanie szczegółów implementacji:</span> Pozwala na ukrycie wewnętrznych mechanizmów działania klasy, eksponując tylko niezbędne interfejsy, co upraszcza korzystanie z klasy.</li>
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
