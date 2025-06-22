import java.io.*;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/upload")
@MultipartConfig
public class UploadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Dosyaları al
        Part filePart1 = request.getPart("file1");
        Part filePart2 = request.getPart("file2");
        
        // Okumak için geçici string
        StringBuilder file1Text = new StringBuilder();
        StringBuilder file2Text = new StringBuilder();
        
        // Dosya içeriğini oku
        try (BufferedReader reader1 = new BufferedReader(new InputStreamReader(filePart1.getInputStream()));
             BufferedReader reader2 = new BufferedReader(new InputStreamReader(filePart2.getInputStream()))) {
            String line;
            while((line = reader1.readLine()) != null) file1Text.append(line).append("\n");
            while((line = reader2.readLine()) != null) file2Text.append(line).append("\n");
        }

        // Okunan verileri göstermek için bir attribute olarak JSP'ye gönder (test aşaması) (Benzerlik hesabı)
        double similarity = calculateSimilarity(file1Text.toString(), file2Text.toString());
        similarity = similarity * 100; // Yüzdeye çevir
        request.setAttribute("file1Text", file1Text.toString());
        request.setAttribute("file2Text", file2Text.toString());
        request.setAttribute("similarity", String.format("%.2f", similarity));
        // Ardından bir sonuç JSP'sine forward ile gönder
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
    private double calculateSimilarity(String text1, String text2) {
        Set<String> set1 = new HashSet<>(Arrays.asList(text1.split("\\s+")));
        Set<String> set2 = new HashSet<>(Arrays.asList(text2.split("\\s+")));

        Set<String> intersection = new HashSet<>(set1);
        intersection.retainAll(set2);

        Set<String> union = new HashSet<>(set1);
        union.addAll(set2);

        if (union.size() == 0) return 0.0;
        return (double) intersection.size() / union.size();
    }
}