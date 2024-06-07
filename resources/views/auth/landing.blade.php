<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SISTEM PERWALIAN MAHASISWA</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="{{asset('MP2')}}/assets/img/logo.png" rel="icon">
  <link href="{{asset('MP2')}}/assets/img/logo.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="{{asset('MP2')}}/https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{{asset('MP2')}}/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="{{asset('MP2')}}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="{{asset('MP2')}}/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="{{asset('MP2')}}/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="{{asset('MP2')}}/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="{{asset('MP2')}}/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="{{asset('MP2')}}/assets/css/style.css" rel="stylesheet">

</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top  header-transparent ">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
        <h1><a href="index.html"><img src="{{asset('MP2')}}/assets/img/logo.png" alt="" class="img-fluid"></a><a href="{{asset('MP2')}}/index.html">STMIK BANDUNG</a></h1>
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li class="dropdown"><a href="{{ route('login') }}"><span>LOGIN</span></a>
          </li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-lg-flex flex-lg-column justify-content-center align-items-stretch pt-5 pt-lg-0 order-2 order-lg-1" data-aos="fade-up">
          <div>
            <h1>SISTEM PERWALIAN MAHASISWA</h1>
            <h2>Sistem perwalian mahasiswa merupakan platform digital yang dirancang untuk memfasilitasi proses perwalian secara efisien dan transparan di lingkungan pendidikan tinggi. Melalui sistem ini, mahasiswa dapat dengan mudah mendaftar mata kuliah yang ingin mereka ambil, mengakses informasi terkait jadwal perkuliahan, kapasitas kelas, dan persyaratan mata kuliah.</h2>
          </div>
        </div>
        <div class="col-lg-6 d-lg-flex flex-lg-column align-items-stretch order-1 order-lg-2 hero-img" data-aos="fade-up">
          <img src="{{asset('MP2')}}/assets/img/hero-img.png" class="img-fluid" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= App Features Section ======= -->
    <section id="features" class="features">
      <div class="container">

        <div class="section-title">
          <h2>App Features</h2>
          <p>Selamat datang di aplikasi kami yang menyediakan berbagai fitur penting untuk mendukung pengelolaan akademik yang efisien dan transparan. Di dalam aplikasi ini, Anda akan menemukan beragam fitur yang dirancang untuk memenuhi kebutuhan perwalian dan manajemen akademik Anda.</p>
        </div>

        <div class="row no-gutters">
          <div class="col-xl-7 d-flex align-items-stretch order-2 order-lg-1">
            <div class="content d-flex flex-column justify-content-center">
              <div class="row">
                <div class="col-md-6 icon-box" data-aos="fade-up">
                  <i class="bx bx-receipt"></i>
                  <h4>Autentikasi dan Otorisasi</h4>
                  <p>Fitur ini memastikan keamanan aplikasi dengan memerlukan pengguna untuk melakukan login dan memberikan akses sesuai dengan peran mereka.</p>
                </div>
                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="100">
                  <i class="bx bx-cube-alt"></i>
                  <h4>Pendaftaran dan Pengaturan Mata Kuliah</h4>
                  <p> Fitur ini memungkinkan mahasiswa untuk mendaftarkan mata kuliah yang ingin mereka ambil dan mengatur jadwal perkuliahan mereka.</p>
                </div>
                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="200">
                  <i class="bx bx-images"></i>
                  <h4>Pemilihan Mata Kuliah</h4>
                  <p>Fitur ini memberikan akses ke informasi lengkap tentang setiap mata kuliah yang tersedia di program studi mahasiswa.</p>
                </div>
                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="300">
                  <i class="bx bx-shield"></i>
                  <h4>Konfirmasi Perwalian:</h4>
                  <p>Fitur ini memberikan pembaruan status perwalian dan memastikan bahwa proses perwalian berjalan dengan lancar.</p>
                </div>
                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="400">
                  <i class="bx bx-atom"></i>
                  <h4>Pemantauan Akademik</h4>
                  <p>Fitur ini memungkinkan mahasiswa untuk melacak kemajuan akademik mereka dan mengakses transkrip akademik.</p>
                </div>
                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="500">
                  <i class="bx bx-id-card"></i>
                  <h4>Pengumuman dan Notifikasi:</h4>
                  <p>Fitur ini memberikan informasi penting kepada mahasiswa melalui pengumuman dan notifikasi yang disesuaikan.</p>
                </div>
              </div>
            </div>
          </div>
          <div class="image col-xl-5 d-flex align-items-stretch justify-content-center order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
            <img src="{{asset('MP2')}}/assets/img/features.svg" class="img-fluid" alt="">
          </div>
        </div>

      </div>
    </section><!-- End App Features Section -->

    <!-- ======= Details Section ======= -->
    <section id="details" class="details">
      <div class="container">

        <div class="row content">
          <div class="col-md-4" data-aos="fade-right">
            <img src="{{asset('MP2')}}/assets/img/details-1.png" class="img-fluid" alt="">
          </div>
          <div class="col-md-8 pt-4" data-aos="fade-up">
            <h3>Proses Perwalian mahasiswa</h3> <!--no 1-->
            <p class="fst-italic">
            Proses bimbingan akademik yang dilakukan oleh dosen pembimbing akademik (DPA) kepada mahasiswanya dan Bertujuan untuk membantu mahasiswa dalam mencapai tujuan studinya dan menyelesaikan studi tepat waktu.
            </p>
            <ul>
            <li><strong><i class="bi bi-check"></i> Pendaftaran Perwalian:</strong> Mahasiswa dapat mendaftarkan diri untuk perwalian melalui sistem web.</li>
            <li><strong><i class="bi bi-check"></i> Pemilihan Mata Kuliah:</strong> Mahasiswa dapat memilih mata kuliah yang ingin diambil pada semester yang bersangkutan.</li>
            <li><strong><i class="bi bi-check"></i> Konsultasi dengan DPA:</strong> Mahasiswa dapat berkonsultasi dengan DPA mengenai berbagai hal terkait akademik, seperti mata kuliah yang cocok, strategi belajar, dan lain sebagainya.</li>
            </ul>
            <p>
            Sistem perwalian mahasiswa STMIK Bandung dirancang untuk membantu mahasiswa dalam mencapai tujuan studinya dan menyelesaikan studi tepat waktu. Kami berharap sistem ini dapat membantu mahasiswa STMIK Bandung dalam menjalani perkuliahan dengan lebih mudah dan efektif.
            </p>
          </div>
        </div>

        <div class="row content">
          <div class="col-md-4 order-1 order-md-2" data-aos="fade-left">
            <img src="{{asset('MP2')}}/assets/img/details-2.png" class="img-fluid" alt="">
          </div>
          <div class="col-md-8 pt-5 order-2 order-md-1" data-aos="fade-up">
            <h3>Verifikasi Perwalian oleh Dosen Pembimbing</h3> <!--no 2-->
            <p class="fst-italic">
            mahasiswa mendaftarkan diri untuk perwalian, DPA akan melakukan verifikasi terhadap data perwalian mahasiswa.
            </p>
            <p>
            <ul>
            <li><strong><i>Verifikasi Data Perwalian </i></strong>DPA akan memverifikasi data perwalian mahasiswa, seperti mata kuliah yang dipilih, nilai akademik semester sebelumnya, dan beban studi.</li>
            <li><strong><i>Konsultasi </i></strong>dapat berkonsultasi dengan DPA mengenai pilihan mata kuliahnya.</li>
            <li><strong><i>Pengesahan KRS</i></strong>DPA akan mengesahkan KRS (Kartu Rencana Studi) mahasiswa setelah dilakukan verifikasi.</li>
            </ul>
            </p>
            <p>
            Bertujuan untuk memastikan bahwa mahasiswa telah memilih mata kuliah yang sesuai dengan minat, kemampuan, dan beban studinya.
            </p>
          </div>
        </div>

        <div class="row content">
          <div class="col-md-4" data-aos="fade-right">
            <img src="{{asset('MP2')}}/assets/img/details-3.png" class="img-fluid" alt="">
          </div>
          <div class="col-md-8 pt-5" data-aos="fade-up">
            <h3>Pemantauan Status Perwalian</h3> <!--no 3-->
            <p>Mahasiswa dapat memantau status perwaliannya melalui sistem web. Status perwalian menunjukkan apakah perwalian mahasiswa telah terdaftar, diverifikasi oleh DPA, atau sudah disahkan KRS-nya.</p>
            <ul>
            <li><strong><i class="bi bi-check"></i> Status Pendaftaran :<strong> Mahasiswa dapat memantau apakah perwaliannya telah terdaftar.</strong></li>
            <li><strong><i class="bi bi-check"></i>Pantauan Status Verifikasi :</strong>Mahasiswa dapat memantau apakah perwaliannya telah diverifikasi oleh DPA.</li>
            <li><strong><i class="bi bi-check"></i>Pantauan Status Pengesahan KRS :</strong>Mahasiswa dapat memantau apakah KRS-nya telah disahkan oleh DPA.</li>
            </ul>
            <p>
            Membantu mahasiswa dalam mengetahui perkembangan proses perwaliannya.
            </p>
            <p>
            Memastikan mahasiswa tidak terlambat mengikuti perwalian.
            </p>
          </div>
        </div>

        <div class="row content">
          <div class="col-md-4 order-1 order-md-2" data-aos="fade-left">
            <img src="{{asset('MP2')}}/assets/img/details-4.png" class="img-fluid" alt="">
          </div>
          <div class="col-md-8 pt-5 order-2 order-md-1" data-aos="fade-up">
            <h3>Notifikasi dan Pengingat</h3><!--no 4-->
            <p class="fst-italic">
            Sistem perwalian mahasiswa STMIK Bandung menyediakan fitur notifikasi dan pengingat untuk membantu mahasiswa dalam mengikuti proses perwalian dengan lebih mudah dan tepat waktu.
            </p>
            <p>
            Membantu mahasiswa dalam mengetahui perkembangan proses perwaliannya lalu memastikan mahasiswa tidak terlambat mengikuti perwalian, dan membantu mahasiswa dalam menyelesaikan proses perwalian dengan tepat waktu.
            </p>
            <ul>
            <li><strong><i>Notifikasi Pendaftaran Perwalian </i></strong>Mahasiswa akan menerima notifikasi ketika masa pendaftaran perwalian dibuka.</li>
            <li><strong><i>Notifikasi Jadwal Perwalian </i></strong>Mahasiswa akan menerima notifikasi berisi jadwal perwalian dengan DPA.</li>
            <li><strong><i>Notifikasi Hasil Verifikasi Perwalian </i></strong>Mahasiswa akan menerima notifikasi berisi hasil verifikasi perwalian dari DPA.</li>
            <li><strong><i>Notifikasi Pengesahan KRS </i></strong>Mahasiswa akan menerima pengingat ketika KRS-nya belum disahkan oleh DPA.</li>

            </ul>
          </div>
        </div>

      </div>
    </section><!-- End Details Section -->


    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Dosen Wali</h2>
          <p>Dosen wali penting dalam mendampingi dan mengawasi perkembangan akademik mahasiswa di perguruan tinggi. Tugasnya meliputi bimbingan dalam perencanaan studi, nasihat akademik dan karier, penyelesaian masalah akademik dan non-akademik, serta memberikan dukungan moral dan motivasi. Ini membantu mahasiswa mencapai kesuksesan studi dan persiapan untuk dunia kerja atau pendidikan lebih lanjut.</p>
        </div>

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="{{asset('MP2')}}/assets/img/profilewoman.png" class="testimonial-img" alt="">
                <h3>Mina Ismu Rahayu, S.T, M.T</h3>
                <h4>Teknik Informatika</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Dosen dan Ketua Prodi Teknik Informatika STMIK Bandung
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div>

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="{{asset('MP2')}}/assets/img/profileman.png" class="testimonial-img" alt="">
                <h3>Dr(C). Yus Jayusman, S.Kom., M.T.</h3>
                <h4>Sistem Informasi</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Dosen, Wakil Ketua Bidang 3 Kemahasiswaan sekaligus Ketua Program Studi Sistem Informasi
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div>

      </div>
    </section><!-- End Testimonials Section -->


    <section id="faq" class="faq section-bg">
  <div class="container" data-aos="fade-up">

  <div class="section-title">
      <h2>Frequently Asked Questions</h2>
      <p>Di bawah ini adalah beberapa pertanyaan yang sering diajukan mengenai sistem akademik mahasiswa. Jika Anda memiliki pertanyaan lain, jangan ragu untuk menghubungi kami.</p>
</div>

<div class="accordion-list">
  <ul>
    <li data-aos="fade-up">
      <i class="bx bx-help-circle icon-help"></i> 
      <a data-bs-toggle="collapse" class="collapse" data-bs-target="#accordion-list-1">Bagaimana cara mendaftar untuk perwalian? 
        <i class="bx bx-chevron-down icon-show"></i>
        <i class="bx bx-chevron-up icon-close"></i>
      </a>
      <div id="accordion-list-1" class="collapse show" data-bs-parent=".accordion-list">
        <p>
          Mahasiswa dapat mendaftar untuk perwalian melalui sistem web dengan mengikuti langkah-langkah yang tertera pada panduan pendaftaran perwalian.
        </p>
      </div>
    </li>

    <li data-aos="fade-up" data-aos-delay="100">
      <i class="bx bx-help-circle icon-help"></i> 
      <a data-bs-toggle="collapse" data-bs-target="#accordion-list-2" class="collapsed">Bagaimana cara melihat mata kuliah? 
        <i class="bx bx-chevron-down icon-show"></i>
        <i class="bx bx-chevron-up icon-close"></i>
      </a>
      <div id="accordion-list-2" class="collapse" data-bs-parent=".accordion-list">
        <p>
          Mahasiswa dapat melihat mata kuliah melalui sistem akademik dengan mengakses menu "semester" dan mengikuti langkah-langkah yang tersedia.
        </p>
      </div>
    </li>

    <li data-aos="fade-up" data-aos-delay="200">
      <i class="bx bx-help-circle icon-help"></i> 
      <a data-bs-toggle="collapse" data-bs-target="#accordion-list-3" class="collapsed">Bagaimana cara mengetahui jadwal perkuliahan? 
        <i class="bx bx-chevron-down icon-show"></i>
        <i class="bx bx-chevron-up icon-close"></i>
      </a>
      <div id="accordion-list-3" class="collapse" data-bs-parent=".accordion-list">
        <p>
          Jadwal perkuliahan dapat dilihat pada sistem akademik di menu "Jadwal Perkuliahan".
        </p>
      </div>
    </li>

    <li data-aos="fade-up" data-aos-delay="300">
      <i class="bx bx-help-circle icon-help"></i> 
      <a data-bs-toggle="collapse" data-bs-target="#accordion-list-4" class="collapsed">Bagaimana cara menghubungi DPA? 
        <i class="bx bx-chevron-down icon-show"></i>
        <i class="bx bx-chevron-up icon-close"></i>
      </a>
      <div id="accordion-list-4" class="collapse" data-bs-parent=".accordion-list">
        <p>
          Mahasiswa dapat menghubungi DPA melalui kontak yang tersedia di profil DPA pada sistem akademik.
        </p>
      </div>
    </li>
  </ul>
</div>

          </div>
        </li>
      </ul>
    </div>

  </div>
</section><!-- End Frequently Asked Questions Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contact</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="row">

          <div class="col-lg-6">
            <div class="row">
              <div class="col-lg-6 info">
                <i class="bx bx-map"></i>
                <h4>Address</h4>
                <p>Jl. Cikutra No.113, Cikutra, Kec. Cibeunying Kidul, Kota Bandung, Jawa Barat 40124</p>
              </div>
              <div class="col-lg-6 info">
                <i class="bx bx-phone"></i>
                <h4>Call Us</h4>
                <p>(022) 7207777</p>
              </div>
              <div class="col-lg-6 info">
                <i class="bx bx-envelope"></i>
                <h4>Email Us</h4>
                <p>stmikbandung@example.com<br> info@stmik-bandung.ac.id</p>
              </div>
              <div class="col-lg-6 info">
                <i class="bx bx-time-five"></i>
                <h4>Working Hours</h4>
                <p>Mon - Fri: 9AM to 5PM<br>Sunday: 9AM to 1PM</p>
              </div>
            </div>
          </div>

          <div class="col-lg-6">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form" data-aos="fade-up">
              <div class="form-group">
                <input placeholder="Your Name" type="text" name="name" class="form-control" id="name" required>
              </div>
              <div class="form-group mt-3">
                <input placeholder="Your Email" type="email" class="form-control" name="email" id="email" required>
              </div>
              <div class="form-group mt-3">
                <input placeholder="Subject" type="text" class="form-control" name="subject" id="subject" required>
              </div>
              <div class="form-group mt-3">
                <textarea placeholder="Message" class="form-control" name="message" rows="5" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>STMIK Bandung</h3>
            <p>
              Jl. Cikutra No.113, Cikutra<br>
              Kec. Cibeunying Kidul, Kota Bandung, Jawa barat<br>
              Indonesia - 40124<br><br>
              <strong>Phone:</strong> +022-7207777<br>
              <strong>Email:</strong> info@stmik-bandung.ac.id<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#hero">HOME</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#features">APP FEATURES</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#faq">F.A.Q</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#management">ACADEMIC MANAGEMENT</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#contact">CONTACT</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Social Media</h4>
            <p></p>
            <div class="social-links mt-3">
              <a href="https://www.youtube.com/channel/UCquRaRrD-VR2sWhHNHDLV5g" class="youtube"><i class="bx bxl-youtube"></i></a>
              <a href="https://id-id.facebook.com/BandungSTMIK" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="https://www.instagram.com/stmikbandung/" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="https://id.linkedin.com/company/stmik-bandung" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container py-4">
      <div class="copyright">
        &copy; Copyright <strong><span>Agista Valomita</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="{{asset('MP2')}}/assets/vendor/aos/aos.js"></script>
  <script src="{{asset('MP2')}}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="{{asset('MP2')}}/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="{{asset('MP2')}}/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="{{asset('MP2')}}/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="{{asset('MP2')}}/assets/js/main.js"></script>

</body>

</html>