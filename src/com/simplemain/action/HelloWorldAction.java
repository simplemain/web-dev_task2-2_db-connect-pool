package com.simplemain.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class HelloWorldAction extends ActionSupport
{
	private static final long serialVersionUID = 2203577571562817131L;

	private List<String> tables;
	
	@Override
	public String execute()
	{
		try (
				Connection conn = DriverManager.getConnection("proxool.mysql-query");
				Statement st    = conn.createStatement();
				ResultSet rs    = st.executeQuery("show tables");
			)
		{
			tables = new ArrayList<>();
			
			while (rs.next())
			{
				for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++)
				{
					tables.add(rs.getString(i));
				}
				System.out.println();
			}
		} 
		catch (Throwable e)
		{
			e.printStackTrace();
		}
		
		return SUCCESS;
	}

	public List<String> getTables()
	{
		return tables;
	}

}
