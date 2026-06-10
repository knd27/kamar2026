# kamar2026

Aplikasi Android WebView untuk `http://192.168.136.162/remote`

## Fitur
- ✅ Splash screen dengan nama app
- ✅ WebView full screen (portrait)
- ✅ Tombol Back untuk navigasi
- ✅ Halaman error jika tidak bisa konek (+ tombol Retry)
- ✅ Support HTTP (cleartext) untuk IP lokal
- ✅ JavaScript enabled

---

## Cara Build APK via GitHub Actions (Tanpa Install Apapun)

### Langkah 1 — Buat Repository GitHub
1. Buka https://github.com/new
2. Nama repo: `kamar2026`
3. Pilih **Private** (opsional)
4. Klik **Create repository**

### Langkah 2 — Upload Project
Upload semua file/folder dari zip ini ke root repository:
```
kamar2026/
├── .github/workflows/build.yml
├── app/
│   ├── build.gradle
│   ├── proguard-rules.pro
│   └── src/main/...
├── build.gradle
├── settings.gradle
├── gradlew
├── gradlew.bat
└── gradle/wrapper/gradle-wrapper.properties
```

> **Catatan:** File `gradlew` dan `gradlew.bat` wajib ada.
> Download dari: https://github.com/gradle/gradle/releases
> atau generate dengan: `gradle wrapper --gradle-version 8.2`

### Langkah 3 — Jalankan Build
- Buka tab **Actions** di repository GitHub
- Klik workflow **Build APK**
- Klik **Run workflow** → **Run workflow**
- Tunggu ~5-8 menit

### Langkah 4 — Download APK
- Setelah build selesai (✅), klik nama workflow
- Scroll ke bawah ke bagian **Artifacts**
- Download **kamar2026-debug** atau **kamar2026-release**
- Extract zip → install `app-debug.apk` di HP

---

## Catatan Penting

**HP harus terhubung ke WiFi/jaringan yang sama** dengan server `192.168.136.162` agar WebView bisa load.

Untuk mengubah URL target, edit baris ini di `MainActivity.java`:
```java
private static final String TARGET_URL = "http://192.168.136.162/remote";
```
