using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01353378_Assignment_1b
{
    public partial class go_kartbooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();

                if (Page.IsValid)
                {

                    string Client_First_Name = client_first_name.Text.ToString();
                    string Client_Last_Name = client_last_name.Text.ToString();
                    string Client_Email = client_email.Text.ToString();
                    string Client_Phone_Num = client_phone_num.Text.ToString();
                    string Event_Date = event_date.Text.ToString();
                    string Event_Time = event_time.SelectedValue.ToString ();
                    string Event_Type = event_type.SelectedValue.ToString();
                    string Guest_Num = guest_num.SelectedValue.ToString ();
              

                    bookingsum.InnerHtml = "Thank you for booking with Alexa's Go Kart Booking!, here is your summary: <br>";

                    bookingsum.InnerHtml += "First Name: " + Client_First_Name + "<br>";
                    bookingsum.InnerHtml += "Last Name: " + Client_Last_Name + "<br>";
                    bookingsum.InnerHtml += "Phone Number: " + Client_Phone_Num + "<br>";
                    bookingsum.InnerHtml += "Email: " + Client_Email + "<br>";
                    bookingsum.InnerHtml += "Date :" + Event_Date + "<br>";
                    bookingsum.InnerHtml += "Time :" + Event_Time + " hours<br>";
                    bookingsum.InnerHtml += "Event Type: " + Event_Type + "<br>";
                    bookingsum.InnerHtml += "Your Guest Number is between: " + Guest_Num + "<br>";


                    if (Guest_Num == "guest_1to4" )
                    {
                        bookingsum.InnerHtml += "Your booking total is : $200 CAD.";
                    }

                    if (Guest_Num == "guest_5to8")
                    {
                        bookingsum.InnerHtml += "Your booking total is : $400 CAD.";
                    }

                    if (Guest_Num == "guest_9to12")
                    {
                        bookingsum.InnerHtml += "Your booking total is $600 CAD.";
                    }

                    if (Guest_Num == "guest_13to16")
                    {
                        bookingsum.InnerHtml += "Your booking total is $800 CAD.";
                    }
                }
            }

        }
    }
}