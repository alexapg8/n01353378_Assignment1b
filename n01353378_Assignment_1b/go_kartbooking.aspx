<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="go_kartbooking.aspx.cs" Inherits="n01353378_Assignment_1b.go_kartbooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Alexa's Go Kart Booking</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section>
              <h1>Alexa's Go Kart Booking</h1>
                <p>Please fill out this form!</p>
                <h2>First Name:</h2>
                <asp:TextBox runat="server" ID="client_first_name" ></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript ="true" ErrorMessage ="Please enter your First Name" ControlToValidate ="client_first_name"></asp:RequiredFieldValidator>
                <h2>Last Name:</h2>
                <asp:TextBox runat="server" ID="client_last_name" ></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript ="true" ErrorMessage ="Please enter your Last Name" ControlToValidate ="client_last_name"></asp:RequiredFieldValidator>
            </section>
            <section>
                <!-- Thor Larholm, http://regexlib.com/Search.aspx?k=email&c=-1&m=3&ps=20, accessed on Sept 23 2019. To validate the email a regular expression validator is needed, i researched this page to find the one that seemed most complete and that worked better for my code. -->
                <h2>Email:</h2>
                <asp:TextBox runat="server" ID="client_email" ></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" EnableClientScript ="true" ControlToValidate ="client_email" ValidationExpression ="^.+@[^\.].*\.[a-z]{2,}$" ErrorMessage ="Please enter a valid Email Address."></asp:RegularExpressionValidator>
                <!-- Laurence O'Donnell, http://regexlib.com/Search.aspx?k=phone&AspxAutoDetectCookieSupport=1, accessed on Sept 23 2019. This page was researched to find the regular expression validator that could validate a phone number with area code. -->

                <h2>Phone Number:</h2>
                <asp:TextBox runat="server" ID="client_phone_num" ></asp:TextBox>
                <asp:RegularExpressionValidator runat ="server" EnableClientScript ="true" ControlToValidate ="client_phone_num" ValidationExpression ="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$" ErrorMessage ="Please enter a valid Phone Number."></asp:RegularExpressionValidator>
            </section>
            <section>
          <!--  Member Nilishere, https://forums.asp.net/t/2106185.aspx?convert+input+type+date+to+ASP+NET+control , accessed on Sept 24 2019. For the date input I found this option online where the author explained to use the same TextBox but with a textmode= "date" to change the input to only date format -->
                <h2>Date:</h2>
                <asp:TextBox runat="server" ID="event_date" textmode="date"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript ="true" ErrorMessage="Please enter a valid date." ControlToValidate ="event_date"></asp:RequiredFieldValidator>
            </section>
            <section>
                <h2>Time:</h2>
                <asp:DropDownList runat="server" ID="event_time">
                     <asp:ListItem Text="---Choose Time----" Value=""></asp:ListItem>
                     <asp:ListItem Text="10:00 a.m." Value="1000"></asp:ListItem>
                     <asp:ListItem Text="11:00 a.m." Value="1100"></asp:ListItem>
                     <asp:ListItem Text="12:00 p.m." Value="1200"></asp:ListItem>
                     <asp:ListItem Text="1:00 p.m." Value="1300"></asp:ListItem>
                     <asp:ListItem Text="2:00 p.m." Value="1400"></asp:ListItem>
                     <asp:ListItem Text="3:00 p.m." Value="1500"></asp:ListItem>
                     <asp:ListItem Text="4:00 p.m." Value="1600"></asp:ListItem>
                     <asp:ListItem Text="5:00 p.m." Value="1700"></asp:ListItem>
                     <asp:ListItem Text="6:00 p.m." Value="1800"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript ="true" ErrorMessage ="Please select a Time." ControlToValidate ="event_time"></asp:RequiredFieldValidator>
            </section>
            <section>
                <h2>Event Type:</h2>
                <asp:RadioButtonList runat="server" ID="event_type">
                    <asp:ListItem Text="Birthday Event" Value="event_birthday"></asp:ListItem>
                    <asp:ListItem Text="School Event" Value="event_school"></asp:ListItem>
                    <asp:ListItem Text="Company Event" Value="event_company"></asp:ListItem>
                    <asp:ListItem Text="Other Event" Value="event_other"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript ="true" ErrorMessage ="Please select an Event Type." ControlToValidate ="event_type"></asp:RequiredFieldValidator>
                <h2>Guest Number:</h2>
                <asp:RadioButtonList runat="server" ID="guest_num">
                    <asp:ListItem Text="1-4" Value="guest_1to4"></asp:ListItem>
                    <asp:ListItem Text="5-8" Value="guest_5to8"></asp:ListItem>
                    <asp:ListItem Text="9-12" Value="guest_9to12"></asp:ListItem>
                    <asp:ListItem Text="13-16" Value="guest_13to16"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript ="true" ErrorMessage ="Please select a Guest Number." ControlToValidate ="guest_num"></asp:RequiredFieldValidator>
            </section>
            <section>
                <h2>Go Kart Track:</h2>
                <asp:CheckBoxList runat="server" ID="kart_track">
                    <asp:ListItem Text="Rosarito" Value="track_rosarito"></asp:ListItem>
                    <asp:ListItem Text="Tijuana" Value="track_tijuana"></asp:ListItem>
                    <asp:ListItem Text="Mexicali" Value="track_mexicali"></asp:ListItem>
                    <asp:ListItem Text="Ensenada" Value="track_ensenada"></asp:ListItem>
                </asp:CheckBoxList> 
                <h2>Go Kart Extras:</h2>
                <asp:CheckBoxList runat="server" ID="kart_extras">
                    <asp:ListItem Text="T-Shirts" Value="extras_tshirts"></asp:ListItem>
                    <asp:ListItem Text="Pizza+Drinks" Value="extras_pizzadrinks"></asp:ListItem>
                    <asp:ListItem Text="Photos" Value="extras_photos"></asp:ListItem>
                    <asp:ListItem Text="Video" Value="extras_video"></asp:ListItem>
                </asp:CheckBoxList> 
            </section>   
            <section>
                <asp:ValidationSummary runat="server" ShowSummary ="true" />
            </section>
            <section id ="bookingsum" runat ="server">
            </section>
            <section>
                <asp:Button runat="server" ID="submit" text="Submit"/>
            </section>
            
        </div>
    </form>
</body>
</html>
