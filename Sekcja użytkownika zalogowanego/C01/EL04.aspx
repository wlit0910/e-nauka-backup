<%@ Page Title="Loops. Arrays" Language="C#" MasterPageFile="~/UserENG/UserEnglish.Master" AutoEventWireup="true" CodeBehind="EL04.aspx.cs" Inherits="e_nauka.UserENG.Formularz_internetowy3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:auto;">
    <div style="background-color:#ff8454;border-radius:20px;border-style:solid;border-color:#141414;margin-top:70px;width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;margin-bottom:40px;">
        <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:55px;">Theory for the task</h1>
    </div>

    <div style="width:auto;height:auto;margin-left:100px;margin-right:100px;text-align:left;">
        <div style="height:auto;">
            <style>.labelDemo { font-size:55px;font-family: Montserrat, sans-serif;font-weight: normal;margin-top:-8px;margin-left:30px;color:black; } </style>      
            <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Loops, arrays in C++" CssClass="labelDemo"></asp:Label>

            <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
Loops and arrays are fundamental tools in programming, allowing you to efficiently perform operations on multiple elements. A loop allows you to execute a 
                piece of code multiple times, while an array is a data structure used to store multiple elements of the same type.
            </p>

            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
                Loop Types in C++
            </p>
            <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                In C++ we can distinguish 3 main types of loops:
            </p>


            <ul style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">for loop:</span> Most often used for a predefined number of iterations.</li>
                <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">while loop:</span> Used when the number of iterations is not known in advance but depends on a condition.</li>
                <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">do-while loop:</span> Similar to <code>while</code> loop, but the condition is checked after executing the loop body.</li>
            </ul>

            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                <code>for</code> loop
            </p>



          <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
               The for loop in C++ is one of the basic control constructs that allows you to execute a specific piece of code multiple times. It is especially useful when you know in advance how many times you want to execute a given piece of code.
            </p>

            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
               <code>for</code> loop structure
            </p>


            <div style="width:auto;height:200px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/HewAnyUfOIcHHY9hgoiJ"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>


             <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Initialization:</span> Here we usually declare and initialize a loop control variable. This is done only once, at the beginning of the loop.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Condition:</span> This is a logical expression that decides whether the loop will continue. If the condition is true, the loop continues. If the condition is false, the loop ends.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Increment:</span> An expression that is executed after each iteration of a loop, typically used to change the value of a control variable.</li>
            </ol>


            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                <code>while</code> loop
            </p>

          <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
               The while loop in C++ is one of the basic iteration constructs that allows a block of code to be executed repeatedly until a specific logical condition is met. It is used when we do not know in advance the number of iterations that must be performed.
            </p>
                        <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
               <code>while</code> loop structure and principle of operation:
            </p>

            <div style="width:auto;height:200px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/mC4tibu6Q7jMkwZx3Ksw"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>


         <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Condition check:</span> Before each iteration of the loop, the logical condition placed in round brackets after the while keyword is checked.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Execution of instructions:</span> If the condition is true, the code block inside the curly braces {} is executed.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Repetition:</span> After the code block executes, the condition is checked again. This process repeats as long as the condition is true.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Ending the loop:</span> When the condition becomes false, the loop stops executing and the program continues with the statement after the loop.</li>
            </ol>


          <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
              <code>while</code> loop usage example
            </p>

           <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                Here is a simple example that illustrates how a <code>while</code> loop works:
            </p>

            <div style="width:auto;height:380px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/vg886JFREGZMcYjG73ms"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>



             <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
               In this example, the while loop will execute as long as the counter variable is less than 5. Each time the loop executes, the value of counter is incremented by 1.
            </p>




            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
               <code>do-while</code> loop
            </p>

                      <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
The do-while loop in C++ is one of the iterative constructs that allows a specific block of code to be executed repeatedly until a specific condition is met. 
                          It is especially useful when we want a block of code to execute at least once, regardless of whether the condition is true.
            </p>
                        <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
              <code>do-while</code> loop structure and operating principle:
            </p>

            <div style="width:auto;height:200px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/UxLkirWFYgt8bV156RFj"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>


           <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Code block execution:</span> First, the code block inside the curly braces {} is executed.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Checking the condition:</span> After the code block is executed, the condition placed after the while keyword is checked.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Repetition or completion:</span> If the condition is true, the loop executes again. If the condition is false, the loop ends and the program continues with the next statements after the loop.</li>
            </ol>

            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
              Example of using <code>do-while</code> loop
            </p>

           <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                Here is a simple example of using a <code>do-while</code> loop in C++:
            </p>

            <div style="width:auto;height:360px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/mASwI3d0CMu9oNJHVKUL"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>


             <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
               In this example, the do-while loop prints numbers from 1 to 5. Even if the initial value of the variable number were greater than 5, the code block inside the loop would execute at least once
            </p>




            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Arrays
            </p>

            <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
               Arrays in C++ are data structures that store multiple elements of the same type in a contiguous area of ​​memory. They are used to store sets of data, such as numbers, characters, or objects, in a way that allows easy access and manipulation.
            </p>

<p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
   C++ Array Structure
</p>

            <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
               An array in C++ is a sequence of elements of the same type that are stored in adjacent memory locations. Each element of the array is identified by an index that starts from zero. For example, in the array int numbers[5], 
                numbers[0] refers to the first element, numbers[1] to the second, and so on.
            </p>


            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
   Creating arrays
</p>

           <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
               Arrays can be created in several ways:
            </p>



              <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Declaration and initialization:</span><br>
                    <code><br>int numbers[5]; // Declaration of a 5-element array<br>
int values[3] = {1, 2, 3}; //Declaration and initialization of an array
</code><br><br>

                </li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Dynamic arrays:</span><br>
                    <code><br>
int* dynamicArray = new int[5]; //Dynamic array allocation<br>
delete[] dynamicArray; // Freeing up memory

                    </code><br><br>
                </li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Multidimensional arrays:</span><br>
<code><br>
    int matrix[3][3] = {<br><br>
    {1, 2, 3},<br>
    {4, 5, 6},<br>
    {7, 8, 9}<br>
}; // Declaration and initialization of a 2D array

</code><br><br>
                </li>
            </ol>


           <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
              Example of using an array
           </p>



            <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                Loops and arrays are often used together when we want to operate on many elements at once. For example, we can use a <code>for</code> loop to loop through all the elements of an array.
            </p>
        </div>


            <div style="width:auto;height:380px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/m8BZ7zj58pgNyxH7rsJr"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
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
