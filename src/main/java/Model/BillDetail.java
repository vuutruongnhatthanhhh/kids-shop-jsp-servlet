package Model;

import Dao.BillDetailDao;

public class BillDetail {
    private int id_bill;
    private int id_product;
    private int amount;
    private double price;

    public BillDetail() {
    }

    public BillDetail(int id_bill, int id_product, int amount, double price) {
        this.id_bill = id_bill;
        this.id_product = id_product;
        this.amount = amount;
        this.price = price;
    }

    public int getId_bill() {
        return id_bill;
    }

    public void setId_bill(int id_bill) {
        this.id_bill = id_bill;
    }

    public int getId_product() {
        return id_product;
    }

    public void setId_product(int id_product) {
        this.id_product = id_product;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getNameProduct() {
        return BillDetailDao.getNameProduct(id_product);
    }

    public int getIDInfo(){
        return BillDetailDao.getIdInfo(id_bill);
    }

    public int getIDUser() {
        return BillDetailDao.getIDUser(id_bill);
    }

    public String getPhoneUser(int idinfo) {
        return BillDetailDao.getPhone(idinfo);
    }



    public String getAddress(int idinfo) {
        return BillDetailDao.getAddress(idinfo);
    }

    public String getWard(int idinfo) {
        return BillDetailDao.getWard(idinfo);
    }

    public String getDistrict(int idinfo) {
        return BillDetailDao.getDistrict(idinfo);
    }

    public String getProvince(int idinfo) {
        return BillDetailDao.getProvince(idinfo);
    }

    public double getTotal() {
        return price*amount;
    }

}
