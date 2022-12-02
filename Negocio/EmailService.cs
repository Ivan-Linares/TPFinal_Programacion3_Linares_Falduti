using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class EmailService
    {
  
            private MailMessage Email;
            private SmtpClient server;

            public EmailService()
            {
                server = new SmtpClient();
                server.Credentials = new NetworkCredential("ff01e6ec42e120", "78e6c7a7b640fb");
                server.EnableSsl = true;
                server.Port = 2525;
                server.Host = "smtp.mailtrap.io";
            }

            public void armarCorreo(string emailDestino, string asunto, string cuerpo)
            {
                Email = new MailMessage();
                Email.From = new MailAddress("noresponder@bienesraices.com");
                Email.To.Add(emailDestino);
                Email.Subject = asunto;
                Email.IsBodyHtml = true;
                Email.Body = cuerpo;

            }

            public void enviarEmail()
            {
                try
                {
                    server.Send(Email);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }

        }
    }

