<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="firstpart.aspx.cs" Inherits="jquery.firstpart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        this is jquery
    </title>
    '<script src="jquery-3.3.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--<script  type="text/javascript">
            window.onload= function()
            {
                
                    if(document.addEventListener)
                 {
                        document.getElementById("Button1").addEventListener('click', evenHandle,true);
                
                }
            else
            {
                        document.getElementById("Button1").addEventListener('onclick', evenHandle);

            }
            };

            function evenHandle()
            {
            
                alert("jquery tuitoril begain ");

            }
           

        </script>--%>
        <script>
            $(document).ready(function () {
                $("#Button1").click(function () {

                    alert("jqury has been start ");
                });

            });
   
        </script>
             <script>
                 $(document).ready(function () {
                     $('#div1').html("Height: = " + $('#img').height() + "Width:=" + $('#img').width());
                 });

            </script>


        <div id="div1"></div>

        <asp:Button ID="Button1" runat="server" Text="Button" />
        <img id="img" src="forntpage.PNG" />
    </div>
    </form>
</body>
</html>
