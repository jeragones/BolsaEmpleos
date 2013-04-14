using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Sockets;
using System.IO;
using System.Text;
using System.Net;
using System.Net.Mail;

namespace CarteraEmpleo.Clases
{
    public class cCorreoComunicacion
    {
        String CORREO = "turismo.empleos@gmail.com";
        String CONTRASENA = "Turismo.123";

        public Boolean CorreoRegistro(String to, String from, String pass)
        {
            String asunto = "";
            String mensaje = "";
            return Correo(to, "Administrador", from, asunto, mensaje, pass, "");
        }

        public Boolean Correo(String to, String sender, String from, String subject, String body, String pass, String archivo)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(CORREO, sender);
            msg.To.Add(new MailAddress(to));
            msg.Subject = subject;
            msg.Body = body;
            msg.IsBodyHtml = true;

            if (/*archivo.HasFile*/false)
            {
                msg.Attachments.Add(new Attachment(archivo));
                // archivo.PostedFile.InputStream, archivo.Filename
            }


            SmtpClient smtp = new SmtpClient();
            //smtp.Host = "smtp.mail.yahoo.com"; // yahoo
            //smtp.Host = "smtp.live.com"; // hotmail
            //smtp.Host = "localhost"; // servidor local
            smtp.Host = "smtp.gmail.com"; // gmail
            smtp.Port = 25;
            smtp.Credentials = new NetworkCredential(CORREO, CONTRASENA);
            smtp.EnableSsl = true;
            try
            {
                smtp.Send(msg);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        /*
        public void SendMail(String p_correo)
        {
            // Gmail Address from where you send the mail
            var fromAddress = "jeragones@gmail.com";
            // any address where the email will be sending
            var toAddress = p_correo.ToString();
            //Password of your gmail address
            const string fromPassword = "Password";
            // Passing the values and make a email formate to display
            //string subject = YourSubject.Text.ToString();
            String subject = "Autentificación";
            string body = "From: " + "Administrador" + "\n";
            body += "Email: " + fromAddress.ToString() + "\n";
            body += "Subject: " + "Hola pura vida" + "\n";
            body += "Question: \n" + "desea autentificar su cuenta" + "\n";
            // smtp settings
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 25;//587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
        }
        */
    }
}