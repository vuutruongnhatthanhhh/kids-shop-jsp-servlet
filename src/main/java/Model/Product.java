package Model;

import Dao.ProductDao;

public class Product {
    private int id;
    private int id_type;
    private String name;
    private int discount;
    private double price;
    private String describe;
    private int status;
    private int amount_shop;
    private int amount_storage;
    private int id_vendor;
    private String date;
    private double import_price;

    public Product() {
    }

    public Product(int id, int id_type, String name, int discount, double price, String describe, int status, int amount_shop, int amount_storage, int id_vendor, String date, double import_price) {
        this.id = id;
        this.id_type = id_type;
        this.name = name;
        this.discount = discount;
        this.price = price;
        this.describe = describe;
        this.status = status;
        this.amount_shop = amount_shop;
        this.amount_storage = amount_storage;
        this.id_vendor = id_vendor;
        this.date = date;
        this.import_price = import_price;
    }

    public Product(int id, int id_type, String name, int discount, double price, String describe, int status, int amount_shop, int amount_storage, int id_vendor, String date) {
        this.id = id;
        this.id_type = id_type;
        this.name = name;
        this.discount = discount;
        this.price = price;
        this.describe = describe;
        this.status = status;
        this.amount_shop = amount_shop;
        this.amount_storage = amount_storage;
        this.id_vendor = id_vendor;
        this.date = date;
    }

    public Product(int id, int id_type, String name, int discount, double price, String describe, int status, int amount_shop, int amount_storage, int id_vendor) {
        this.id = id;
        this.id_type = id_type;
        this.name = name;
        this.discount = discount;
        this.price = price;
        this.describe = describe;
        this.status = status;
        this.amount_shop = amount_shop;
        this.amount_storage = amount_storage;
        this.id_vendor = id_vendor;
    }

    public double getImport_price() {
        return import_price;
    }

    public void setImport_price(double import_price) {
        this.import_price = import_price;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_type() {
        return id_type;
    }

    public void setId_type(int id_type) {
        this.id_type = id_type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price-(price*discount/100);
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getAmount_shop() {
        return amount_shop;
    }

    public void setAmount_shop(int amount_shop) {
        this.amount_shop = amount_shop;
    }

    public int getAmount_storage() {
        return amount_storage;
    }

    public void setAmount_storage(int amount_storage) {
        this.amount_storage = amount_storage;
    }

    public int getId_vendor() {

        return id_vendor;
    }

    public void setId_vendor(int id_vendor) {
        this.id_vendor = id_vendor;
    }

    public String getImageUrl() {
        return ProductDao.getImageUrl(id);
    }

    public String getNameType() {
        String rs="";
        if(id_type==1){
            rs="Sữa bột cao cấp";
        }
        if(id_type==2){
            rs="Bỉm tả khuyến mãi";
        }
        if(id_type==3){
            rs="Ăn dặm dinh dưỡng";
        }
        if(id_type==4){
            rs="Vitamin & Sức khỏe";
        }
        if(id_type==5){
            rs="Chăm sóc gia đình";
        }
        if(id_type==6){
            rs="Đồ dùng mẹ bé";
        }
        if(id_type==7){
            rs="Thời trang & Phụ kiện";
        }
        if(id_type==8){
            rs="Đồ chơi, học tập";
        }
        return rs;

    }

    public static String getNameType(int idtype) {
        String rs="";
        if(idtype==1){
            rs="Sữa bột cao cấp";
        }
        if(idtype==2){
            rs="Bỉm tả khuyến mãi";
        }
        if(idtype==3){
            rs="Ăn dặm dinh dưỡng";
        }
        if(idtype==4){
            rs="Vitamin & Sức khỏe";
        }
        if(idtype==5){
            rs="Chăm sóc gia đình";
        }
        if(idtype==6){
            rs="Đồ dùng mẹ bé";
        }
        if(idtype==7){
            rs="Thời trang & Phụ kiện";
        }
        if(idtype==8){
            rs="Đồ chơi, học tập";
        }
        return rs;

    }

    public String getNameVendor() {
        String rs="";
        if(id_vendor==1){
            rs="Concung";
        }
        if(id_vendor==2){
            rs="Kho mẹ bé Thiên An";
        }
        if(id_vendor==3){
            rs="Sozo";
        }
        if(id_vendor==4){
            rs="Chaang";
        }
        return rs;
    }
}
