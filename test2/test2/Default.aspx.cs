using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail; //libreria para mails

namespace test2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_enviar_Click(object sender, EventArgs e)
        {
            MailMessage mensaje = new MailMessage();
            mensaje.From = new MailAddress("nicolasmunozread@gmail.com");
            mensaje.To.Add(txb_destinatario.Text);
            mensaje.Subject = txb_asunto.Text;
            mensaje.Body = txb_mensaje.Text;
            mensaje.IsBodyHtml = false; //para que el formato del mail no sea en html

            SmtpClient smtp = new SmtpClient(); //protocolo simple de transferencia de mail, envia correos a traves de una aplicacion .net a un servidor smtp que luego entrega los correos a su destinatario final
            smtp.Host = "smtp.gmail.com";
            System.Net.NetworkCredential credenciales = new System.Net.NetworkCredential(); //declarar el puerto de salida y el service poket layer
            credenciales.UserName = "nicolasmunozread@gmail.com";
            credenciales.Password = "lctb nosy cqfq moeq"; //you need to set this in your account so te smtp protocol can work 
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = credenciales;
            smtp.Port = 587; //456 o 25 puertos de salidas para otro tipos de cuenta de mails como yahoo, etc.
            smtp.EnableSsl = true; //capa de conexion segura service socket layer
            smtp.Send(mensaje);
            LblConfirmacion.Text = "Se envió exitosamente";

        }
    }
}