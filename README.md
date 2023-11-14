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
