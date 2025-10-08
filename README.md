📋 Proje Hakkında
Bu proje, Java Servlet ve JSP teknolojileri kullanılarak geliştirilmiş, web tabanlı bir intihal tespit sistemidir. Kullanıcılar iki farklı metin dosyasını yükleyerek aralarındaki benzerlik oranını hesaplayabilir ve intihal tespiti yapabilirler.

🎯 Özellikler
Web Tabanlı Arayüz: Modern ve kullanıcı dostu JSP tabanlı web arayüzü
Dosya Yükleme: İki farklı metin dosyasını (.txt) sisteme yükleme
Benzerlik Analizi: TF-IDF ve kosinüs benzerliği algoritmaları ile intihal tespiti
Gerçek Zamanlı Sonuçlar: Anlık benzerlik yüzdesi hesaplama ve görüntüleme
Bootstrap Entegrasyonu: Responsive ve modern tasarım
Servlet Tabanlı Backend: Java Servlet ile güçlü backend işlemleri

🛠️ Teknolojiler

### Backend
Java (JDK 8+)
Java Servlet API
JSP (JavaServer Pages)
Apache Commons FileUpload (Dosya yükleme için)

### Frontend
HTML5
CSS3
Bootstrap 5.3.2
JavaScript

### Server
Apache Tomcat 9.0+

📁 Proje Yapısı
PlagiarismDetectionTool/
│
├── src/
│   └── main/
│       └── java/
│           ├── PlagiarismDetector.java      # Ana intihal tespit algoritması
│           ├── UploadServlet.java           # Dosya yükleme servlet'i
│           └── ResultServlet.java           # Sonuç gösterim servlet'i
│
├── webapp/
│   ├── WEB-INF/
│   │   ├── web.xml                          # Web uygulama yapılandırma
│   │   └── MANIFEST.MF                      # Manifest dosyası
│   │
│   ├── META-INF/
│   │   └── MANIFEST.MF
│   │
│   ├── index.jsp                            # Ana sayfa (dosya yükleme formu)
│   ├── result.jsp                           # Sonuç sayfası
│   └── favicon.png                          # Site ikonu
│
└── Libraries/
    └── JAX-WS Web Services                  # Web servisleri kütüphaneleri


🚀 Kurulum
Gereksinimler
* Java JDK 8 veya üzeri
* Apache Tomcat 9.0 veya üzeri
* Eclipse IDE veya IntelliJ IDEA (önerilen)
* Maven (bağımlılık yönetimi için - opsiyonel)

Adım 1: Projeyi Klonlama
````
git clone https://github.com/burakberaksama/plagiarism_detection_tool.git
cd plagiarism_detection_tool
````
Adım 2: IDE'de Açma
Eclipse için:

File → Import → Existing Projects into Workspace
Proje klasörünü seçin
Finish butonuna tıklayın

Adım 3: Tomcat Yapılandırması
* IDE'nizde Tomcat sunucusunu ekleyin
* Projeyi Tomcat'e deploy edin
* Sunucu yapılandırmasını kaydedin

Adım 4: Uygulamayı Çalıştırma

* Tomcat sunucusunu başlatın
* Tarayıcınızda şu adresi açın: http://localhost:8080/PlagiarismDetectionTool/

📊 Benzerlik Değerlendirme Kriterleri
Benzerlik Oranı	Durum	Açıklama
%0 - 30	✅ Düşük	Orijinal içerik, intihal yok
%30 - 60	⚠️ Orta	Kısmen benzer, kontrol edilmeli
%60 - 80	🔶 Yüksek	Dikkat gerektirir, muhtemel intihal
%80 - 100	❌ Çok Yüksek	İntihal olasılığı çok yüksek

🔐 Güvenlik Özellikleri
✅ Sadece .txt dosya formatı kabul edilir
✅ Dosya boyutu sınırlaması (max 10MB)
✅ Multipart form verisi doğrulaması
✅ XSS koruması için input validasyonu
✅ Servlet Exception handling

👨‍💻 Geliştirici

BURAK BERK ŞAMA
