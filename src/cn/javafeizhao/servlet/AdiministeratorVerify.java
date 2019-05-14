package cn.javafeizhao.servlet;

import cn.javafeizhao.dbmain.UserAdministrator;
import cn.javafeizhao.obd.ProcessingDatabase;


public class AdiministeratorVerify {

    String useradministrator= UserAdministrator.getAdministrator();
    String password=UserAdministrator.getPassword();
    ProcessingDatabase adiministratorsql=new ProcessingDatabase();
    //验证管理员身份
    public boolean verifyAdiministerator(){
//        System.out.println(useradministrator+"-----"+password);
        boolean bool=false;
        try {
            if (adiministratorsql.queryAdiministrator(useradministrator, password)!=0) {
                bool = true;
            }else {
                bool = false;
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return bool;
    }



}
