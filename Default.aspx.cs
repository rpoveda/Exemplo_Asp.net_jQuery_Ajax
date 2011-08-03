using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static string Login(string login, string senha)
    {
        string resposta;

        if (login == "admin" && senha == "admin")
        {
            resposta = "Login aceito";
        }
        else
        {
            resposta = "Login/Senha inválidos";
        }

        return resposta;
		
		public void oi(string teste)
		{
		}
    }
	
	public void oi()
	{
		Bla bla
	}
}