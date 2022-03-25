using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Global
/// </summary>
public class Global
{
    public static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	public Global()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}