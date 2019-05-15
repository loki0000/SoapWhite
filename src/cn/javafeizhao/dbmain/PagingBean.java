package cn.javafeizhao.dbmain;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PagingBean {


    //总条数
    int totalNumber;
    //每页显示的条数
    int eachPage;
    //总页数
    int numberOfTotalPages;
    //当前页数
    int atPresentPageTree;
    //商品资源
    List<ShopAttritube> shopAttritubes=new ArrayList<ShopAttritube>();
    //返回list的长度
    int shopListlength;

    public int getShopListlength(){
        return shopListlength;
    }
    public void setShopListlength( List<ShopAttritube> shopAttritubes){
        this.shopListlength=shopAttritubes.size();
    }



    public int getTotalNumber() {
        return totalNumber;
    }

    public void setTotalNumber(int totalNumber) {
        this.totalNumber = totalNumber;
    }

    public int getEachPage() {
        return eachPage;
    }

    public void setEachPage(int eachPage) {
        this.eachPage = eachPage;
    }

    public int getNumberOfTotalPages() {
        return numberOfTotalPages;
    }

    public void setNumberOfTotalPages(int numberOfTotalPages) {
        this.numberOfTotalPages = numberOfTotalPages;
    }

    public int getAtPresentPageTree() {
        return atPresentPageTree;
    }

    public void setAtPresentPageTree(int atPresentPageTree) {
        this.atPresentPageTree = atPresentPageTree;
    }

    public List<ShopAttritube> getShopAttritubes() {
        return shopAttritubes;
    }

    public void setShopAttritubes(List<ShopAttritube> shopAttritubes) {
        this.shopAttritubes = shopAttritubes;
    }



}
