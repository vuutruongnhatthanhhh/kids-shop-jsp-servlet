package Model;

public class InfoDeliver {
    private int id;
    private int id_user;
    private String phone;
    private  String province;
    private String district;
    private String ward;
    private String address;

    public InfoDeliver() {
    }

    public InfoDeliver(int id, int id_user, String phone, String province, String district, String ward, String address) {
        this.id = id;
        this.id_user = id_user;
        this.phone = phone;
        this.province = province;
        this.district = district;
        this.ward = ward;
        this.address = address;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
