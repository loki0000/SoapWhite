package cn.javafeizhao.obd;

import cn.javafeizhao.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import java.sql.SQLException;


public class AdiministratorSQl {


    public int queryAdiministrator(String useradiministerator,String password)
    throws SQLException{
//        System.out.println(useradiministerator+"---"+password);
        QueryRunner queryRunner=new QueryRunner(DataSourceUtils.getDataSource());
        String sql="select * from administrator where userAdministrator=? and userPassword=?";
        ResultSetHandler resultSetHandler=new ScalarHandler();
        int lon =(int)queryRunner.query(sql,resultSetHandler,useradiministerator,password);
        return lon;
    }

}
