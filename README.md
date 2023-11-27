1.Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

Perbedaan utama antara Stateless dan Stateful widget dalam pengembangan aplikasi Flutter terletak pada cara mereka mengelola dan merespons perubahan dalam tampilan dan data. Stateless widget, seperti namanya, tidak memiliki state internal yang dapat berubah setelah widget dibuat. Ini cocok digunakan untuk bagian tampilan yang statis, seperti teks atau ikon yang tidak memerlukan perubahan berdasarkan data atau interaksi pengguna. Sebaliknya, Stateful widget memungkinkan pengelolaan state internal yang dapat berubah sepanjang siklus hidupnya. Widget ini cocok digunakan ketika perubahan data atau interaksi pengguna memengaruhi tampilan, seperti formulir input, daftar item yang dapat diperbarui, dan lainnya. Dengan Stateful widget, Saya merespons perubahan dengan memperbarui tampilan sesuai dengan perubahan data, sehingga memberikan lebih banyak fleksibilitas dalam mengembangkan aplikasi yang dinamis.

2.Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing?

Tiga widget utama digunakan untuk menyelesaikan tugas tersebut. Pertama, MyHomePage berperan sebagai bersaya utama aplikasi, dan itu adalah turunan dari StatelessWidget. Fungsi utamanya adalah menampilkan tampilan utama aplikasi yang berisi daftar item toko. Selanjutnya, terdapat ShopItem, sebuah kelas yang digunakan untuk merepresentasikan setiap item toko dalam aplikasi. ShopItem ini memuat properti seperti nama, ikon, dan warna yang diperlukan untuk setiap item toko. Terakhir, ShopCard adalah widget lain yang juga merupakan turunan dari StatelessWidget. Fungsinya adalah menampilkan setiap item toko dalam bentuk kartu dengan menampilkan ikon dan teks yang sesuai. Ketika pengguna menyentuhnya, ShopCard akan merespons dengan menampilkan pesan Snackbar yang sesuai. 

 
 3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

Untuk mengimplementasikan checklist yang telah disebutkan, pertama-tama, saya membuat sebuah proyek Flutter baru dengan tema inventory. Proyek Flutter ini akan menjadi dasar dari aplikasi yang saya bangun. Setelah proyek dibuat, langkah selanjutnya adalah membuat tiga tombol sederhana dengan ikon dan teks yang sesuai. Saya menggunakan widget Icon dan Text untuk menggambarkan tombol-tombol tersebut. Selanjutnya, Saya perlu menangani sentuhan pengguna pada tombol-tombol ini. Saya menggunakan GestureDetector atau InkWell untuk mengidentifikasi ketika tombol ditekan. Ketika pengguna menyentuh tombol, Saya menggunakan ScaffoldMessenger untuk menampilkan Snackbar yang sesuai dengan tombol yang ditekan. Misalnya, pesan "Kamu telah menekan tombol Lihat Item" akan muncul ketika tombol "Lihat Item" ditekan. Terakhir, Saya perlu mengatur tampilan aplikasi Saya dengan menambahkan tombol-tombol ini ke halaman bersaya saya, dan pastikan untuk menjalankan aplikasi Sayauntuk melihat hasilnya. Dengan mengikuti langkah-langkah ini, Saya akan memiliki aplikasi Flutter yang memenuhi checklist yang telah diberikan. 


4. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Navigator push digunakan untuk menavigasi ke halaman baru sambil mempertahankan halaman saat ini dalam stack navigasi. Artinya, jika pengguna menekan tombol kembali, mereka akan kembali ke halaman sebelumnya. Misalnya, jika saya berada di halaman Home dan menggunakan Navigator.push() untuk pergi ke halaman Detail, maka menekan tombol kembali akan membawa saya kembali ke halaman Home.

Sementara itu, Navigator.pushReplacement() digunakan untuk menavigasi ke halaman baru dan menghapus halaman saat ini dari stack navigasi. Jadi, jika pengguna menekan tombol kembali, mereka tidak akan kembali ke halaman sebelumnya, tetapi aplikasi akan ditutup (jika halaman tersebut adalah halaman pertama dalam stack navigasi). Misalnya, jika saya berada di halaman Login dan setelah berhasil login saya menggunakan Navigator.pushReplacement() untuk pergi ke halaman Home, maka menekan tombol kembali tidak akan membawa saya kembali ke halaman Login, tetapi akan menutup aplikasi.

5. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
   
Container: Widget yang menggabungkan beberapa widget penataan, pengecatan, dan penentuan posisi yang umum.
Row dan Column: Widget ini digunakan untuk menata widget anak secara horizontal (Row) atau vertikal (Column).
Stack: Widget ini berguna jika saya ingin menumpuk beberapa anak secara sederhana.
GridView: Widget ini mengimplementasikan komponen daftar grid yang terdiri dari pola sel yang diulang dalam tata letak vertikal dan horizontal.
ListView: Widget ini adalah widget scrolling yang paling umum digunakan. Ia menampilkan anak-anaknya satu demi satu dalam arah scroll.

6. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
   
Elemen input pada form yang umum digunakan dalam Flutter adalah TextField dan TextFormField. TextField adalah widget yang memungkinkan pengguna untuk memasukkan teks. Sementara TextFormField adalah widget yang membungkus TextField dalam FormField, yang memungkinkan validasi form.

7. Bagaimana penerapan clean architecture pada aplikasi Flutter?
    
Clean Architecture dalam Flutter biasanya melibatkan pemisahan kode menjadi beberapa lapisan, termasuk lapisan Data, Domain, dan Presentation. Lapisan Data biasanya berisi kode untuk mengakses dan memanipulasi data, seperti panggilan API atau operasi database. Lapisan Domain berisi logika bisnis aplikasi dan entitas. Lapisan Presentation berisi kode untuk UI dan manajemen state. Dengan menerapkan Clean Architecture, kode menjadi lebih mudah untuk diuji, dipahami, dan dipelihara.

8. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!. Dalam paraf terpadu

Untuk menyelesaikan tugas ini, pertama-tama saya membuat halaman baru dengan Navigator.push() dan MaterialPageRoute. Di dalam halaman baru tersebut, saya menambahkan sebuah Form yang berisi tiga TextFormField untuk name, amount, dan description. Setiap TextFormField dilengkapi dengan validator untuk memastikan bahwa input tidak kosong dan sesuai dengan tipe data atribut modelnya.

Selanjutnya, saya menambahkan sebuah ElevatedButton dengan label Save. Ketika tombol ini ditekan, aplikasi akan menampilkan pop-up dengan showDialog yang berisi data dari formulir. Di halaman utama, saya menambahkan sebuah ElevatedButton yang ketika ditekan, akan memanggil Navigator.push() untuk berpindah ke halaman formulir.

Terakhir, saya menambahkan sebuah Drawer yang berisi dua ListTile untuk 'Halaman Utama' dan 'Tambah Item'. Ketika salah satu opsi ini dipilih, aplikasi akan memanggil Navigator.push() atau Navigator.pushReplacement() untuk berpindah ke halaman yang sesuai. Dengan demikian, aplikasi sekarang memiliki fungsi untuk menambah item baru dan navigasi antar halaman melalui drawer.

9.Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Ya, kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Membuat model sebelum melakukan pengambilan data JSON memiliki beberapa keuntungan. Pertama, model dapat membantu kita dalam memahami struktur data yang kita kerjakan. Kedua, model juga memudahkan kita dalam melakukan operasi pada data tersebut, seperti query atau transformasi data. Ketiga, model dapat membantu dalam memvalidasi data yang kita terima, sehingga kita bisa memastikan bahwa data tersebut sesuai dengan yang kita harapkan.

Jadi, meskipun kita bisa melakukan pengambilan data JSON tanpa membuat model, pendekatan ini biasanya hanya disarankan untuk skenario yang sederhana atau untuk prototyping cepat. Untuk aplikasi produksi atau aplikasi yang lebih kompleks, biasanya lebih baik untuk mendefinisikan model terlebih dahulu.

10. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

CookieRequest adalah sebuah kelas yang digunakan untuk mengelola cookie di aplikasi Flutter. CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter agar semua komponen dapat mengakses cookie dengan mudah. Hal ini karena cookie dapat digunakan untuk berbagai keperluan, seperti otentikasi, personalisasi, dan analisis. Dengan membagikan instance CookieRequest ke semua komponen di aplikasi Flutter, maka semua komponen dapat mengakses cookie dengan mudah dan konsisten. Hal ini dapat memudahkan pengembang untuk mengembangkan aplikasi yang lebih terintegrasi dan efisien.

11. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

Mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter melibatkan beberapa langkah. Pertama, saya perlu mengirim permintaan HTTP ke endpoint yang mengembalikan data dalam format JSON. Ini bisa dilakukan dengan menggunakan paket `http` di Flutter. Setelah mendapatkan respons dari server, saya akan menerima data dalam format string JSON.

Langkah selanjutnya adalah mengubah string JSON ini menjadi struktur data yang dapat dikerjakan oleh Flutter lewat https://app.quicktype.io/.Untuk memudahkan pengolahan data, biasanya lebih baik untuk mendefinisikan model data terlebih dahulu. Setelah saya memiliki instance model, saya bisa menggunakan data ini untuk memperbarui state aplikasi saya dan memicu pembangunan ulang widget. Flutter akan secara otomatis merender ulang widget yang state-nya berubah, dan data saya akan ditampilkan di UI. saya bisa menggunakan berbagai widget yang disediakan oleh Flutter, seperti Text untuk menampilkan teks, atau ListView untuk menampilkan daftar item.

12. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Pertama, pengguna memasukkan data akun mereka (biasanya username dan password) melalui form login pada aplikasi Flutter. Form ini bisa dibuat dengan menggunakan widget TextField untuk input data. Kemudian, aplikasi Flutter mengirimkan data ini ke server Django melalui permintaan HTTP POST. Permintaan ini biasanya dikirim ke endpoint khusus untuk autentikasi. Data akun yang dimasukkan pengguna dikirim dalam body permintaan sebagai data form atau JSON. Setelah menerima permintaan, Django akan memeriksa data akun yang diterima. Jika data akun valid (misalnya, username dan password cocok dengan data yang ada di database), Django akan membuat sesi baru untuk pengguna dan mengembalikan token autentikasi dalam respons HTTP. Token ini biasanya disimpan dalam cookie atau header HTTP. Flutter kemudian menerima respons dari Django dan mengekstrak token autentikasi. Token ini kemudian disimpan dan digunakan untuk setiap permintaan selanjutnya ke server, sehingga server dapat mengenali pengguna dan memberikan akses ke sumber daya yang sesuai. Setelah proses autentikasi selesai, menu aplikasi ditampilkan pada Flutter. Menu ini biasanya dibuat dengan menggunakan widget seperti Drawer, dan berisi link ke berbagai bagian dari aplikasi yang sekarang dapat diakses oleh pengguna. Pengguna sekarang dapat berinteraksi dengan aplikasi dan mengakses data mereka.
 
13. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
    
Beberapa widget yang mungkin saya gunakan dalam pengembangan aplikasi Flutter antara lain MaterialApp, Scaffold, AppBar, TextField, ElevatedButton, ListView, dan Text. MaterialApp adalah widget root yang menyediakan banyak fitur Material Design. Scaffold menyediakan struktur visual dasar untuk aplikasi Material Design. AppBar adalah bar aplikasi Material Design. TextField digunakan untuk menerima input teks dari pengguna. ElevatedButton adalah tombol Material Design dengan elevasi dan ink splash. ListView digunakan untuk menampilkan daftar item secara scrollable. Text digunakan untuk menampilkan teks dengan gaya yang bisa disesuaikan.

15. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

Untuk menyelesaikan tugas ini, perlu melakukan beberapa hal. Pertama, pastikan proyek Django telah berhasil di-deploy dan berjalan dengan baik bisa melakukan ini dengan mengakses URL deployment dan memastikan bahwa semua endpoint berfungsi dengan baik.

Setelah itu,  membuat halaman login pada proyek Flutter, menggunakan widget `TextField` untuk input username dan password, dan `ElevatedButton` untuk tombol login. Setelah halaman login selesai,  mengintegrasikan sistem autentikasi Django dengan proyek Flutter bisa menggunakan package `http` untuk mengirim request POST ke endpoint login Django. Setelah mendapatkan response berupa token, simpan token tersebut untuk digunakan dalam request selanjutnya.

Selanjutnya,  membuat model kustom di Flutter yang sesuai dengan struktur data JSON yang diterima dari Django. Model ini akan memudahkan saya dalam mengolah data tersebut. Setelah model selesai, buat halaman baru yang berisi `ListView` untuk menampilkan daftar item. Dapatkan data item tersebut dengan mengirim GET request ke endpoint Django.

Terakhir, membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item. Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item. Tampilkan seluruh atribut dari model item pada halaman ini dan tambahkan tombol untuk kembali ke halaman daftar item. Dengan menyelesaikan langkah-langkah ini,pembuatan aplikasi Flutter yang terintegrasi dengan backend Django berhasil.
