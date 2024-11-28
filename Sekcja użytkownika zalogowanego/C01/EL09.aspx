<%@ Page Title="Inheritance and Polymorphism in C++" Language="C#" MasterPageFile="~/UserENG/UserEnglish.Master" AutoEventWireup="true" CodeBehind="EL09.aspx.cs" Inherits="e_nauka.UserENG.Formularz_internetowy8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div style="height:auto;">


       <div style="background-color:#ff8454;border-radius:20px;border-style:solid;border-color:#141414;margin-top:70px; width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;margin-bottom:40px;">
            <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:55px;">Theory for the task</h1>
      </div>

        <div style="width:auto;height:auto;margin-left:100px;margin-right:100px;text-align:left;">
    <div style="height:auto;">
        <style>.labelDemo { font-size:55px;font-family: Montserrat, sans-serif;font-weight: normal;margin-top:-8px;margin-left:30px;color:black;} </style>      
        <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Inheritance and Polymorphism in C++" CssClass="labelDemo"></asp:Label>



        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      <span style="font-weight:bold;">Inheritance</span>  is a mechanism in object-oriented programming that allows you to create new classes based on existing ones. 
            The new class, called a derived class, inherits the properties and methods of the base class. Inheritance allows us to reuse code, making it more modular and easier to maintain.<br><br>
            <span style="font-weight:bold;">Polymorphism</span>  (polymorphism) is a feature of object-oriented programming that allows the same method to behave differently depending on the object that calls it. Polymorphism is closely related to inheritance and virtual methods.
    </p>





                <p style="font-family: Montserrat, sans-serif;font-weight: bold;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       Polymorphism example        
    </p>


      <div style="width:auto;height:640px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/6iah2axz91UeLDbOUZww"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>

                <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      In the above example, the Pies class inherits the eat method from the Zwierze class and also defines its own szczekaj() method.          
    </p>


                    <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Polymorphism in C++
            </p>

                <p style="font-family: Montserrat, sans-serif;font-weight: bold;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       Polymorphism example       
    </p>


              <div style="width:auto;height:930px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/mxpPiaURQhFRY5b6oyro"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>



      <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
          In this example, the method wydajDzwiek() is defined as virtual in the Zwierze class and redefined in the Pies and Kot classes. Thanks to polymorphism, calling wydajDzwiek() on a pointer to the Zwierze class causes the corresponding method to be called in the derived classes.
    </p>




          <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
            Application of inheritance and polymorphism
            </p>
                                


             <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Inheritance</span> allows you to create more complex class hierarchies, making it easier to organize your code and reuse existing classes.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Polymorphism</span> enables the creation of flexible and extensible systems in which objects of different classes can be treated uniformly but behave in their own specific way.</li>
            </ol>




  </div>


                            <div style="display:block;text-align:right;margin-top:50px;margin-right:40px;">


       <style>.btnTask1 { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
       

       <asp:Button ID="Zadanie_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Go to task" BackColor="#ff8454" CssClass="btnTask1" OnClick="Zadanie_demo_Click"  />
       
                   
	 </div>


<div style="display:block;text-align:right;margin-top:20px;margin-right:40px;">
    <style>.btnTask { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:200px;}</style>
    <asp:Button ID="Wroc_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Go back" BackColor="#ff8454" CssClass="btnTask" OnClick="Wroc_demo_Click"    />
 </div>


            </div>
            </div>

</asp:Content>
