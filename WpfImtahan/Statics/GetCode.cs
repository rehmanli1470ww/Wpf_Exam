using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace WpfImtahan.Statics
{
    public static class GetCode
    {
        public static string GmailVerify(string gmail)
        {
            

            int VerifyCode = Random.Shared.Next(111111, 999999);
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("rubail.rehmanli95@gmail.com");
            string sbj = "VERIFY CODE";
            msg.Subject = sbj;
            msg.To.Add(new MailAddress(gmail));
            msg.Body = VerifyCode.ToString();



            var smtpClient = new SmtpClient("smtp.gmail.com")
            {
                Port = 587,
                Credentials = new NetworkCredential("rubail.rehmanli95@gmail.com", "khhf ecmk vwm m iaxo"),
                EnableSsl = true
            };
            smtpClient.Send(msg);
            return VerifyCode.ToString();
        }
    }
}