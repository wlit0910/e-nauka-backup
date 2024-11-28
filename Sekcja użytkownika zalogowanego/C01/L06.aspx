<%@ Page Title="Wskaźniki. Teoria" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="L06.aspx.cs" Inherits="e_nauka.User.Formularz_internetowy3" %>
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
        <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Wskaźniki" CssClass="labelDemo"></asp:Label>



        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       Wskaźniki w C++ to zmienne, które przechowują adresy pamięci innych zmiennych. Są one niezwykle przydatne w programowaniu, ponieważ umożliwiają bezpośredni dostęp do pamięci, co może zwiększyć wydajność i elastyczność kodu.
    </p>





            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Budowa wskaźników
            </p>

     <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      Wskaźnik jest deklarowany za pomocą symbolu <code>*</code> przed nazwą zmiennej. Oto przykład deklaracji wskaźnika do zmiennej typu int:<br>
                 <code>int *wskaznik;</code><br>Wskaźnik wskaznik może teraz przechowywać adres zmiennej typu int.
    </p>





                    <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Tworzenie wskaźników
            </p>

                <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       Aby przypisać adres zmiennej do wskaźnika, używamy operatora <code>&</code>, który zwraca adres zmiennej. Oto przykład:<br>
<code>int liczba = 10;<br>
int *wskaznik = &liczba;
</code><br>
                    W tym przypadku wskaźnik wskaznik przechowuje adres zmiennej liczba.
    </p>





          <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
               Zastosowanie wskaźników
            </p>



             <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Dynamiczna alokacja pamięci:</span> Umożliwiają dynamiczne przydzielanie i zwalnianie pamięci za pomocą funkcji takich jak new i delete.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Przekazywanie argumentów do funkcji:</span> Umożliwiają przekazywanie zmiennych przez referencję, co pozwala na modyfikację oryginalnych zmiennych wewnątrz funkcji.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Tablice i struktury danych:</span> Ułatwiają iterację po elementach tablic i innych struktur danych.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Funkcje wskaźnikowe:</span> Umożliwiają przechowywanie adresów funkcji, co pozwala na dynamiczne wywoływanie funkcji.</li>
            </ol>







          <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Przykład użycia wskaźników
            </p>


        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      Oto prosty przykład, który pokazuje, jak wskaźniki mogą być używane do modyfikacji wartości zmiennej:
    </p>


            <div style="width:auto;height:390px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/UVcnxe2GK3jmi6mdbTyg"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
     W tym przykładzie funkcja zmienWartosc zmienia wartość zmiennej liczba poprzez wskaźnik.
    </p>







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
