package com.sanqing.po;



/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String username;
     private String password;
     private Integer quanxian;


    // Constructors

    public Integer getQuanxian() {
		return quanxian;
	}


	public void setQuanxian(Integer quanxian) {
		this.quanxian = quanxian;
	}


	/** default constructor */
    public User() {
    }

    
    /** full constructor */
    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
   








}