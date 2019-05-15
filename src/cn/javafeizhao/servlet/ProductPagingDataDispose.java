package cn.javafeizhao.servlet;

import cn.javafeizhao.dbmain.ShopAttritube;
import cn.javafeizhao.obd.ProcessingDatabase;
import java.sql.SQLException;
import java.util.List;

public class ProductPagingDataDispose {

   //从数据库获取商品总条数
    public static int getSumNumber(){
        int sum=0;
        try {
            sum = ProcessingDatabase.queryProductTotalNumber();
        }catch(SQLException e){
            e.printStackTrace();
        }

        return sum;
    }

    //从页面中获取每页显示的条数
    public static int  getEachPage(int eachpage){

        return eachpage;
    }
    //通过计算获取总页数=总条数/每页显示的条数
    public static int getNumberOfTotalPages(int sum,int eachpage){
        int umberOfTotalPages=(int)Math.ceil(1.0*sum/eachpage);

     return  umberOfTotalPages;
    }
    //从页面中获取当前页数
    public static int getAtPresentPageTree(int atpresentpagetree){
        return atpresentpagetree;
    }
    //从数据库中获取商品资源
    public static List<ShopAttritube> getShopListAttritube(int atpresentpagetree,int eachpage){
        List<ShopAttritube> shopAttritubeList=null;
        try{
            shopAttritubeList=ProcessingDatabase.quseryPaging(atpresentpagetree,eachpage);
        }catch(SQLException e){
            e.printStackTrace();
        }
       return shopAttritubeList;
    }

}
