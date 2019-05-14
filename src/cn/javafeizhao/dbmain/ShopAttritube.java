package cn.javafeizhao.dbmain;

public class ShopAttritube {

    //id
    int sid;
    //商品名称
    String shopName;
    //商品描述
    String shopDescribe;
    //商品价钱
    double shopMoney;
    //图片路径
    String shopImage;
    //是否热门
    int shopIFHot;
    //商品类型
    String shopSort;
    //商品类型id
    int cid;

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public String getShopDescribe() {
        return shopDescribe;
    }

    public void setShopDescribe(String shopDescribe) {
        this.shopDescribe = shopDescribe;
    }

    public double getShopMoney() {
        return shopMoney;
    }

    public void setShopMoney(double shopMoney) {
        this.shopMoney = shopMoney;
    }

    public String getShopImage() {
        return shopImage;
    }

    public void setShopImage(String shopImage) {
        this.shopImage = shopImage;
    }

    public int getShopIFHot() {
        return shopIFHot;
    }

    public void setShopIFHot(int shopIFHot) {
        this.shopIFHot = shopIFHot;
    }

    public String getShopSort() {
        return shopSort;
    }

    public void setShopSort(String shopSort) {
        this.shopSort = shopSort;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }



}
