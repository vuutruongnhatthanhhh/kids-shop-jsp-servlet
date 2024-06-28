package Model;

import Dao.BillDetailDao;

import java.util.Date;

public class Bill {
    private int id;
    private int id_user;
    private int id_info;
    private Date date;
    private double total;
    private int status;

    public Bill() {
    }

    public Bill(int id, int id_user, int id_info, Date date, double total, int status) {
        this.id = id;
        this.id_user = id_user;
        this.id_info = id_info;
        this.date = date;
        this.total = total;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public int getId_info() {
        return id_info;
    }

    public void setId_info(int id_info) {
        this.id_info = id_info;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getNameUser() {
        return BillDetailDao.getNameUser(id_user);
    }

    public String getAddress() {
        return BillDetailDao.getAddress(id_info);
    }

    public String getWard() {
        return BillDetailDao.getWard(id_info);
    }

    public String getDistrict() {
        return BillDetailDao.getDistrict(id_info);
    }

    public String getProvince() {
        return BillDetailDao.getProvince(id_info);
    }
}
