package Service;

import java.util.Random;

public class OTPGenerator {

    public static String generateOTP() {
        int otpLength = 6; // Độ dài của mã OTP
        StringBuilder otp = new StringBuilder();

        // Ký tự được phép trong mã OTP
        String allowedChars = "0123456789";

        // Tạo đối tượng Random để tạo giá trị ngẫu nhiên
        Random random = new Random();

        // Tạo mã OTP ngẫu nhiên
        for (int i = 0; i < otpLength; i++) {
            int index = random.nextInt(allowedChars.length());
            char randomChar = allowedChars.charAt(index);
            otp.append(randomChar);
        }

        return otp.toString();
    }

    public static void main(String[] args) {
        // Sử dụng phương thức generateOTP() để tạo mã OTP ngẫu nhiên
        String generatedOTP = generateOTP();

        // In mã OTP ra console
        System.out.println("Generated OTP: " + generatedOTP);
    }
}

