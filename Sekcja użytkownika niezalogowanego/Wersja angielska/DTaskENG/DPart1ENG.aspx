<%@ Page Title="Part II. Theory" Language="C#" MasterPageFile="~/DTaskENG/TheoryENG.Master" AutoEventWireup="true" CodeBehind="DPart1ENG.aspx.cs" Inherits="e_nauka.DTaskENG.Formularz_internetowy11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div style="height:auto;">

             <div style="background-color:#ff8454;border-radius:20px;border-style:solid;border-color:#141414;margin-top:70px; width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;margin-bottom:40px;">
            <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:55px;">Theory for the task</h1>
      </div>

<%------------------To jest na czerwono--%>
                <div style="width:auto;height:auto;margin-left:100px;margin-right:100px;text-align:left;">
            <div style="height:auto;">
                <style>.labelDemo { font-size:55px;font-family: Montserrat, sans-serif;font-weight: normal;margin-top:-8px;margin-left:30px;color:black;} </style>      
                <asp:Label ID="TytulLekcji_Demo" runat="server" Text="C++ Basics" CssClass="labelDemo"></asp:Label>

                <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
C++ is one of the most popular and important programming languages ​​in the world. It is used to create system applications, games, utility programs,
as well as software running on embedded devices such as microcontrollers. C++ allows programmers to have full control over the hardware, while offering
advanced tools for organizing code. <br><br>
C++ is a compiled language. This means that before a program can run, it must be "translated" (compiled) from source code into machine code that the computer understands. This role is performed by a compiler.
                </p>

                <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
                    First C++ Program – "Hello, World!"
                </p>


                <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                   The first program you'll write in C++ is a classic program that displays text on the screen. In our case, it's the text "Hello, World!".<br>Here's what the code looks like:
                </p>






                <%----------------------------- SNIPPET -----------------------------%>

                <div style="width:auto;height:300px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;">
<iframe
  src="https://carbon.now.sh/embed/PW6sl8V1TwSHi0E3pWYU"
  style="width: 50%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
                    </div>
                <%----------------------------------------------------------%>


                <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;font-size:30px;">
                    Code overview
                </p>

              <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                    Now we will explain step by step what this code does:
                </p>

                <style>
                    .label-code { font-size:20px;background-color:#fcd9cc;margin-left:10px;}
                </style>


<ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
  <li style="margin-bottom:10px;"> <code class="label-code">#include &lt;iostream&gt; </code><br>
This line tells the compiler to include a library called iostream (input-output). With it, we can display information on the screen (output) or get data from the user (input).

  </li>
  <li style="margin-bottom:10px;">
      <code class="label-code">int main() </code><br>
      Every C++ program begins with a main() function. This is the starting point of your program, the place where the computer begins executing your code.
  </li>
  <li style="margin-bottom:10px;">
      <code class="label-code">std::cout << "Hello, World!" << std::endl;</code><br>
     This is the most important line in our program. <code>std::cout</code> means console output,
      i.e. the stream to which we will send the text. <br>
      Sign <code><<</code> means that we "pass on" the text <code>"Hello, World!"</code> to console. 
      <code>std::endl</code> is a special command that causes a new line to appear (equivalent to pressing the Enter key).<br><br>
      To avoid using the prefix every time <code>std::</code> before the key functions of the program, we can add a namespace
      <code>using namespace std;</code> over the function <code>int main()</code>. 
      Then - instead of <code>std::cout << "Hello, World!" << std::endl;</code> just enter <code>cout << "Hello World";</code>.

  </li>

   <li style="margin-bottom:10px;">
      <code class="label-code">return 0; </code><br>
      This line tells the compiler that the program completed successfully. 0 means there were no errors.
  </li>

</ol>



 <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;font-size:30px;margin-top:40px;">
                    C++ Programming Principles
</p>

<p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                    Here is the most important information <span style="font-weight:bold;">(at this level)</span>, to remember when writing code in C++:
</p>



<ul style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">


   <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Semicolon at the end of the instruction</span><br>
      Every C++ statement must end with a semicolon (;). <br>
      Example: <code>&ensp;int x = 5; </code>
  </li>


  <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Input-output operators</span><br>
      There are two functions available in the iostream library: <code>cout</code> and <code>cin</code>, which are used to communicate with the output and input.<br>
      Function <code>cout</code> prints the specified instructions to the console screen, and the function <code>cin</code> retrieves data from the user into the program.<br>
      Example:<br> 
      <code>cin >> name </code><br>
      <code>cout << "Your name: " << name</code>

  </li>

  <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Curly Braces for Code Blocks</span><br>
      Code blocks such as function bodies, loops, or conditionals must be enclosed in curly braces. {...}. <br>
      Example: <br>
    <code>if (x > 0) <br>{<br>
    &emsp; std::cout << "The number is positive!";<br>
}</code>

  </li>

  <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">C++ is case sensitive</span><br>
      C++ is <span style="font-weight:bold;">case-sensitive</span>. This means that the variables <code>int result</code> i <code>int Result</code> are two different variables.
  </li>

  <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Standard libraries and #include directive</span><br>
     To use the functions for input/output (e.g. displaying text on the screen), you must include the appropriate standard libraries. <br>We attach them using the <code>#include</code> directive<br>
     Example: <code>#include &lt;iostream&gt;</code>
      
  </li>

      <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Using namespaces</span><br>
    Many elements of C++ are organized into <span style="font-weight:bold;"> namespaces</span>. <br> 
          The most commonly used namespace is <code>std</code>, that contains basic functions and objects, such as <code>std::cout</code>.<br>
    To avoid having to write <code>std::</code> every time, we can add <code>using namespace std;</code> over the main() function <br> and just type <code>cout << "whatever";</code>.

      
  </li>



</ul>


            </div>


        </div>

<%----------------------------------------------------------%>

<div style="display:block;text-align:right;margin-top:50px;margin-right:40px;">


       <style>.btnTask1 { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
       

       <asp:Button ID="Zadanie_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Go to task" BackColor="#ff8454" CssClass="btnTask1" OnClick="Zadanie_demo_Click"  />
       
                   
	 </div>


<div style="display:block;text-align:right;margin-top:20px;margin-right:40px;">
    <style>.btnTask { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:200px;}</style>
    <asp:Button ID="Wroc_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Go back" BackColor="#ff8454" CssClass="btnTask" OnClick="Wroc_demo_Click"  />
 </div>


</div>
</asp:Content>
