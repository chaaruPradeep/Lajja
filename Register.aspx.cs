using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lil
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string strcon = "Data Source=Desktop-J6KRVK5;Initial Catalog=Lil;Integrated Security=True";
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("Lil_Adm_Application", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("FName", fnametextbox.Text);
            SqlParameter p2 = new SqlParameter("LName", lnametextbox.Text);
            SqlParameter p3 = new SqlParameter("FatherName", fathernametextbox.Text);
            SqlParameter p4 = new SqlParameter("MotherName", mothernametextbox.Text);
            SqlParameter p5 = new SqlParameter("EmailAddress", emailtextbox.Text);
            SqlParameter p6 = new SqlParameter("Address", addresstextbox.Text);
            SqlParameter p7 = new SqlParameter("District", districtdropdown.SelectedItem.Value);
            SqlParameter p8 = new SqlParameter("State", statedropdown.SelectedItem.Value);
            SqlParameter p9 = new SqlParameter("How_you_hear_about_us", howyouhearaboutdropdown.SelectedItem.Value);
            SqlParameter p10 = new SqlParameter("DOB", dobtextbox.Text);
            SqlParameter p11 = new SqlParameter("SEX", sexdropdown.Text);
            SqlParameter p12 = new SqlParameter("AdmissionForClass", admclassdropdown.SelectedItem.Value);
            SqlParameter p13 = new SqlParameter("MobileNumber", mobiletextbox.Text);
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            com.Parameters.Add(p3);
            com.Parameters.Add(p4);
            com.Parameters.Add(p5);
            com.Parameters.Add(p6);
            com.Parameters.Add(p7);
            com.Parameters.Add(p8);
            com.Parameters.Add(p9);
            com.Parameters.Add(p10);
            com.Parameters.Add(p11);
            com.Parameters.Add(p12);
            com.Parameters.Add(p13);
            con.Open();
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                alertlabel.Text = "Invalid or already Applied.";
                alertlabel.Visible = true;
            }
            else
            {
                alertlabel.Text = "Thank You Submitting the application!";
                alertlabel.Visible = true;
                Sendemail();
            }
            
        }
           public void  Sendemail(){
                string emailSender = ConfigurationManager.AppSettings["username"].ToString();
                string emailSenderPassword = ConfigurationManager.AppSettings["password"].ToString();
                string emailSenderHost = ConfigurationManager.AppSettings["smtp"].ToString();
                int emailSenderPort = Convert.ToInt16(ConfigurationManager.AppSettings["portnumber"]);
                Boolean emailIsSSL = Convert.ToBoolean(ConfigurationManager.AppSettings["IsSSL"]);


                //Fetching Email Body Text from EmailTemplate File.  
                string FilePath = "C:\\Users\\prade\\source\\repos\\Lil\\Email_Template\\Addmission_Application_Acceptance_Format.html";
                StreamReader str = new StreamReader(FilePath);
                string MailText = str.ReadToEnd();
                str.Close();

                //Repalce [newusername] = signup user name   
                MailText = MailText.Replace("[newusername]", fnametextbox.Text.Trim());
                //MailText = MailText.Replace("[applicationnumber]", "ApplicationNumber");


                string subject = "Little Lambs";

                //Base class for sending email  
                MailMessage _mailmsg = new MailMessage
                {

                    //Make TRUE because our body text is html  
                    IsBodyHtml = true,

                    //Set From Email ID  
                    From = new MailAddress(emailSender)
                };

                //Set To Email ID  
                _mailmsg.To.Add(emailtextbox.Text.ToString());

                //Set Subject  
                _mailmsg.Subject = subject;

                //Set Body Text of Email   
                _mailmsg.Body = MailText;


                //Now set your SMTP   
                SmtpClient _smtp = new SmtpClient
                {

                    //Set HOST server SMTP detail  
                    Host = emailSenderHost,

                    //Set PORT number of SMTP  
                    Port = emailSenderPort,

                    //Set SSL --> True / False  
                    EnableSsl = emailIsSSL
                };

                //Set Sender UserEmailID, Password  
                NetworkCredential _network = new NetworkCredential(emailSender, emailSenderPassword);
                _smtp.Credentials = _network;

                //Send Method will send your MailMessage create above.  
                _smtp.Send(_mailmsg);
                //        Response.Redirect("~/Login.aspx");
                //    }

            }

        }
    }
