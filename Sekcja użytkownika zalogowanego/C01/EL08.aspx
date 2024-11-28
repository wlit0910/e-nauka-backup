<%@ Page Title="Classes. Objects" Language="C#" MasterPageFile="~/UserENG/UserEnglish.Master" AutoEventWireup="true" CodeBehind="EL08.aspx.cs" Inherits="e_nauka.UserENG.Formularz_internetowy7" %>
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
        <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Classes. Objects " CssClass="labelDemo"></asp:Label>



        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
Classes and objects are the basic building blocks of object-oriented programming in C++. A class is a template that defines the properties (fields) and behaviors (methods) of objects. 
            An object is an instance of a class, a specific instance that has its own field values.
    </p>





            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Class structure
            </p>

     <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
     A class is defined with the <code>class</code> keyword, followed by the name of the class and a block defining its fields and methods.:
    </p>

      <div style="width:auto;height:330px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/jgd74UWYAhC3YV7Dz6wJ"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>




                    <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Creating objects
            </p>

                <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      Once we define a class, we can create its objects:         
    </p>


              <div style="width:auto;height:220px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/jBkbC23Al6QIx05DinHk"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>



                    <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Constructors
            </p>

                <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       Constructors are special methods that are called automatically when an object is created. They are used to initialize the object's fields. A constructor has the same name as the class and does not return any value.<br><br>
                    <span style="font-weight:bold;">Constructor example:</span>          
    </p>


      <div style="width:auto;height:630px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/AyGdOSqQzchg5NseTErU"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>


           <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Hermetization
            </p>

      <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
Hermetization is a principle of object-oriented programming that involves hiding the details of a class's implementation and exposing only the necessary interfaces for manipulating data. Encapsulation protects data from unauthorized access and modification.<br><br>
          <span style="font-weight:bold;">An example of encapsulation:</span> 
    </p>

              <div style="width:auto;height:830px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/pMLkUT2ZeBpzW6VZSSRi"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>



                        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
In the above example, the balance field is private, meaning that it cannot be directly modified outside the class.

The balance is only accessible via the public methods wplata, wyplata, and sprawdzSaldo, which provides control over how the balance is zmieniane1    
    </p>






          <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
               Applications of classes and objects
            </p>
                                
        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      Structures are used in many different contexts:          
    </p>


             <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Modularity and code organization:</span> Classes allow you to divide code into smaller, logical units, making large projects easier to manage and maintain.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Reusing code:</span> Thanks to inheritance, classes can be extended and modified without having to change existing code.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Modeling real objects:</span> Classes allow you to create objects that represent real-world entities, such as cars, people, or bank accounts.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Abstraction:</span> Classes allow you to hide implementation details and expose only the necessary interfaces, making your code easier to use.</li>
            </ol>


       <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
               Applications of hermetic sealing
            </p>
                                


             <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Data security:</span> Encapsulation protects data from unauthorized access and modification, which increases application security.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Access control:</span> It allows you to control which parts of your code can modify data, preventing errors and unwanted changes.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Easy to maintain:</span> Thanks to encapsulation, changes in the implementation of a class do not affect the code that uses that class, which makes it easier to maintain and evolve applications.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Modularity:</span> Encapsulation supports code modularity, which allows for easier management of large projects.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Hiding implementation details:</span> It allows you to hide the internal workings of a class, exposing only the necessary interfaces, which simplifies the use of the class.</li>
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
