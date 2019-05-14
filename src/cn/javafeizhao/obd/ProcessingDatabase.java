package cn.javafeizhao.obd;

import cn.javafeizhao.dbmain.ShopAttritube;
import cn.javafeizhao.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.omg.PortableInterceptor.INACTIVE;

import java.sql.SQLException;
import java.util.List;


public class ProcessingDatabase {

    public int queryAdiministrator(String useradiministerator,String password)
    throws SQLException{
//      System.out.println(useradiministerator+"---"+password);
        QueryRunner queryRunner=new QueryRunner(DataSourceUtils.getDataSource());
        String sql="select * from administrator where userAdministrator=? and userPassword=?";
        ResultSetHandler resultSetHandler=new ScalarHandler();
        int lon =(int)queryRunner.query(sql,resultSetHandler,useradiministerator,password);
        return lon;
    }
    //查询商品总条数
    public static int queryProductTotalNumber()throws SQLException{
        QueryRunner queryRunner=new QueryRunner(DataSourceUtils.getDataSource());
        String sql="select * from shop";
        int totalNumber=(int) queryRunner.query(sql,new ScalarHandler());
        return totalNumber;
    }

    //对商品进行分页查询
    public static List<ShopAttritube> quseryPaging(int atpresentpagetree,int eachpage)throws SQLException{
        QueryRunner queryRunner=new QueryRunner(DataSourceUtils.getDataSource());
        String sql="select * from shop limit ?,?";
        //计算出起始位置
        int start=(atpresentpagetree-1)*eachpage;
        List<ShopAttritube> shopAttritubeList=queryRunner.query(sql,new BeanListHandler<ShopAttritube>(ShopAttritube.class),start,eachpage);
        return shopAttritubeList;
    }

}
