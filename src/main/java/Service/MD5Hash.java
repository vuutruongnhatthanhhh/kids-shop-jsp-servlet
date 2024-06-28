package Service;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Hash {

    public static String hashPassword(String password) {
        try {
            // Tạo đối tượng MessageDigest với thuật toán MD5
            MessageDigest md = MessageDigest.getInstance("MD5");

            // Chuyển đổi chuỗi password thành mảng bytes
            byte[] passwordBytes = password.getBytes();

            // Thực hiện hash trên mảng bytes
            byte[] hashedBytes = md.digest(passwordBytes);

            // Chuyển đổi mảng bytes thành chuỗi hex
            StringBuilder sb = new StringBuilder();
            for (byte b : hashedBytes) {
                sb.append(String.format("%02x", b));
            }

            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            // Xử lý ngoại lệ nếu thuật toán không được hỗ trợ
            return null;
        }
    }

    public static void main(String[] args) {
        String password = "Ka Ân Thiên Phúc";
        String hashedPassword = hashPassword(password);

        System.out.println("Password: " + password);
        System.out.println("Hashed Password: " + hashedPassword);
    }
}

