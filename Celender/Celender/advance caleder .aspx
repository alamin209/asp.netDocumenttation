<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="advance caleder .aspx.cs" Inherits="Celender.advance_caleder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Caption="Traing " DayNameFormat="Full" FirstDayOfWeek="Thursday" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" NextMonthText="&gt;&gt;" NextPrevFormat="ShortMonth" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" SelectionMode="DayWeekMonth" SelectMonthText="Select month" SelectWeekText="Selected week" ShowGridLines="True" Width="220px" OnVisibleMonthChanged="Calendar1_VisibleMonthChanged">
            <DayHeaderStyle BackColor="#FF0066" Font-Bold="True" ForeColor="#99FFCC" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
    
    </div>
    </form>
</body>
</html>
