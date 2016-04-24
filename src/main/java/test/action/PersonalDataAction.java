package test.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by julia.hovinen on 4/13/2016.
 */
public class PersonalDataAction extends ActionSupport {
    private static final long serialVersionUID = -7189960659827964206L;
    private String userName;

    //метод обработки введённой информации
    public String contactData()	{
        if(getUserName().equals("admin")){
            return "success";
        } else
            return "error";
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserName() {
        return userName;
    }
}