package Model;

import Dao.InfoDeliverDao;

public class User {
    private int id;
    private String username;
    private String password;
    private String email;
    private String name;
    private int role;
    private int activate;

    public User() {
    }

    public User(int id, String username, String password, String email, String name, int role, int activate) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.name = name;
        this.role = role;
        this.activate = activate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getRole() {
        return role;
    }
    public String getNameRole() {
        if(role==0){
            return "Admin";
        }
        if(role==1) {
            return "Mod";
        }
        if(role==2) {
            return "User";
        }
        return null;

    }

    public String getNameActivate() {
        if(activate==0){
            return "Chưa kích hoạt";
        }
        if(activate==1) {
            return "Đã kích hoạt";
        }

        return null;

    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getActivate() {
        return activate;
    }

    public void setActivate(int activate) {
        this.activate = activate;
    }

    public String getPhone(){
     return InfoDeliverDao.getPhone(id);
    }

    public String getProvince(){
        return InfoDeliverDao.getProvince(id);
    }

    public String getDistrict(){
        return InfoDeliverDao.getDistrict(id);
    }

    public String getWard(){
        return InfoDeliverDao.getWard(id);
    }

    public String getAddress(){
        return InfoDeliverDao.getAddress(id);
    }
}
