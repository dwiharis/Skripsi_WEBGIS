-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2020 at 11:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis_nyamuk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`nama`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `data_artikel`
--

CREATE TABLE `data_artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `isi_artikel` varchar(10000) NOT NULL,
  `tgl_upload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_artikel`
--

INSERT INTO `data_artikel` (`id_artikel`, `judul_artikel`, `isi_artikel`, `tgl_upload`) VALUES
(5, '7 Cara Cegah Virus Corona di Tempat Kerja Saat New Normal', 'Berikut ini langkah-langkah mencegah virus corona di tempat kerja 1. Selalu menggunakan masker saat bekerja di kantor Salah satu cara cegah virus corona di tempat kerja yang paling penting adalah dengan selalu menggunakanmasker saat bekerja di kantor. Mulai dari berangkat kerja sampai tiba lagi di rumah. Penggunaan masker dapat melindungi diri Anda dari paparan zat berbahaya, termasuk virus dan bakteri, yang terdapat di udara. Anda dapat membawa masker cadangan selama berada di kantor. Jangan lupa untuk mengganti penggunaan masker setiap beberapa jam sekali.  2. Memastikan area meja kerja dalam kondisi bersih Cara cegah virus corona di tempat kerja berikutnya adalah dengan memastikan area meja kerja Anda dalam kondisi bersih. Anda dapat membersihkan permukaan barang-barang yang berada di atas meja kerja, seperti meja, telepon, keyboard komputer, dan lainnya menggunakan cairan desinfektan secara berkala. Sebab, virus dapat menular melalui cipratan air liur saat batuk atau bersin yang menempel di permukaan benda, kemudian disentuh oleh orang lain. Jika tidak dilakukan pembersihan menggunakan desinfektan secara berkala, maka dapat meningkatkan risiko penularan Covid-19.  3. Menerapkan jaga jarak minimal 1 meter Untuk cegah virus corona di tempat kerja, sebisa mungkin Anda menerapkan jaga jarak tempat kerja Anda dengan rekan kerja lainnya minimal 1 meter. Pasalnya, saat ini orang yang telah terinfeksi virus corona bisa saja tampak sehat atau biasa disebut dengan orang tanpa gejala (OTG) sehingga alangkah baiknya untuk menghindari kontak langsung dengan orang lain, termasuk saat berada di lingkungan tempat kerja.  Penerapan jaga jarak ini juga berlaku saat pengecekan suhu tubuh dan di dalam lift kantor. Selain itu, Anda juga perlu menghindari pertemuan sosial di area kantor yang melibatkan banyak orang untuk sementara waktu. 4. Sering mencuci tangan Cara cegah virus corona di tempat kerja yang tak kalah penting adalah sering mencuci tangan. Terutama setelah dari toilet, setelah batuk dan bersin, serta sebelum dan sesudah makan. Anda bisa mencuci tangan menggunakan air mengalir dan sabun. Akan tetapi, jika Anda sulit menemukan akses air mengalir, Anda bisa mencuci tangan dengan cairan pembersih yang mengandung minimal alkohol 60%.  Mencuci tangan dengan air mengalir dan sabun ataupun cairan pembersih yang mengandung alkohol dapat membantu menyingkirkan dan membunuh virus yang mungkin terdapat pada permukaan tangan Anda. Pastikan Anda mencuci tangan dengan cara yang tepat selama minimal 20 detik.  5. Hindari menyentuh mata, hidung, dan mulut sampai tangan sudah bersih Cara cegah virus corona di tempat kerja lainnya adalah menghindari sentuh mata, hidung, dan mulut, sampai tangan Anda sudah dalam kondisi bersih. Ini karena selama berada di tempat kerja Anda mungkin menyentuh benda apa pun yang berada di sekitar Anda. Namun, tanpa disadari, benda-benda tersebut dapat berisiko meningkatkan penularan virus di tangan Anda. Nah, saat tangan menyentuh mata, hidung, dan mulut maka virus tersebut dapat masuk ke dalam tubuh sehingga membuat Anda jatuh sakit.  6. Menjaga etika kebersihan saat batuk dan bersin Saat bersin dan batuk pastikan Anda menutup hidung dan mulut dengan tisu atau siku bagian dalam. Cara cegah virus corona di tempat kerja ini dapat melindungi orang lain di sekitar Anda dari berbagai macam virus, seperti flu, pilek, hingga virus corona, yang mungkin keluar melalui percikan cairan dari mulut dan hidung.  7. Jangan pergi ke kantor bila sedang sakit Sebaiknya jangan pergi bekerja ke kantor bila Anda sedang sakit. Hal ini bertujuan untuk menghindari penularan penyakit Anda ke orang lain. Jika Anda mengalami demam, batuk, sulit bernapas, atau gejala yang menunjukkan indikasiCovid-19, segera periksakan diri ke dokter guna mendapatkan penanganan yang tepat. ', '2020-06-20'),
(6, 'Demam Berdarah Dengue: Gejala, Cara mencegah dan Pengobatan', 'DBD atau yang lebih dikenal dengan demam berdarah dengue disebabkan oleh virus yang ditularkan melalui gigitan nyamuk. Diperkirakan bahwa ada seratus juta kasus demam berdarah yang terjadi pada tiap tahunnya di seluruh dunia. Sebagian diantaranya mewabah secara tiba-tiba dan menjangkiti ribuan orang dalam waktu singkat. Gejala Demam Berdarah Dengue Masa inkubasi virus dengue bisa berlangsung sekitar empat hingga tujuh hari. Masa inkubasi adalah jarak waktu antara virus pertama masuk ke dalam tubuh sampai gejala pertama muncul. Gejala demam berdarah atau DBD umumnya akan terlihat pada tiga hingga empat belas hari setelah masa inkubasi tersebut dan biasanya diawali dengan demam tinggi yang bisa mencapai suhu 41 derajat celsius. Beberapa gejala DBD yang lainnya adalah: • Tubuh menggigil • Sakit kepala parah • Munculnya bintik-bintik merah pada kulit • Sakit tenggorokan • Hilang nafsu makan • Nyeri pada perut dan mual – mual • Wajah yang berwarna kemerahan • Nyeri hebat pada otot-otot punggung bawah, lengan, hingga kaki • Nyeri hebat pada tulang dan sendi • Rasa sakit bagian belakang mata • Pendarahan yang tidak wajar, seperti gusi berdarah, mimisan, darah pada air seni atau Feses CB Jika segera diobati, gejala tersebut biasanya reda dalam waktu beberapa minggu. Sesudah mereda, biasanya pasien akan butuh waktu beberapa minggu lagi untuk sembuh total. Baca juga: Agar Tak Mudah Sakit: Ini 7 Cara Meningkatkan Imun Tubuh Saatnya memeriksakan diri ke dokter Sebaiknya segera periksakan diri Anda ke dokter jika mengalami gejala seperti flu atau demam selama lebih dari satu minggu. Biasanya dokter akan melakukan pemeriksaan darah untuk mengetahui apakah Anda terjangkit DBD / demam berdarah dengue. Selain untuk mengetahui keberadaan virus dengue dalam tubuh Anda, tes darah juga penting dilakukan agar dokter bisa tahu jika terdapat masalah kesehatan serius lainnya yang bisa menyebabkan gejala tersebut. Pencegahan Demam Berdarah Dengue Hingga saat ini belum ada vaksin yang dapat menangkal demam berdarah. Oleh karena itu cara terbaik untuk mencegah DBD adalah dengan menghindari terkena gigitan nyamuk yang membawa virusnya. Berikut ini adalah cara-cara agar kita bisa terhindar dari gigitan nyamuk Aedes aegypti: • Mensterilkan rumah atau lingkungan di sekitar rumah Anda, misalnya dengan penyemprotan pembasmi nyamuk (fogging). • Membersihkan bak mandi dan menaburkan serbuk abate agar jentik-jentik nyamuk mati. • Menutup, membalik, atau jika perlu menyingkirkan media-media kecil penampung air lainnya yang ada di rumah Anda. • Memasang kawat anti nyamuk di seluruh ventilasi rumah Anda. • Memasang kelambu di ranjang tidur Anda. • Memakai losion anti nyamuk, terutama yang mengandung N-diethylmetatoluamide (DEET) yang terbukti efektif. Namun jangan gunakan produk ini pada bayi yang masih berusia di bawah dua tahun. • Mengenakan pakaian yang cukup bisa melindungi Anda dari gigitan nyamuk.Pengobatan Demam Berdarah Dengue Hingga kini belum ada vaksinasi atau pun obat khusus untuk mengobati demam berdarah atau DBD. Pengobatan berkisar pada cara untuk meringankan gejalanya, membuat si penderita senyaman mungkin, serta mencegah dan menangani komplikasi – komplikasi yang terjadi. Jika Anda tengah mengalami gejala penyakit DBD, Anda disarankan untuk: • Banyak beristirahat. • Banyak minum air putih untuk mencegah dehidrasi • Konsumsilah parasetamol untuk meringankan gejala demam dan nyeri (Jangan mengonsumsi ibuprofen atau aspirin karena kedua obat tersebut dapat memicu pendarahan dalam pada penderita DBD). • Memeriksakan diri ke dokter jika dalam waktu tiga hingga lima hari, tidak ada tanda-tanda pemulihan pada gejala yang Anda rasakan. Jika menderita DBD berat, Anda mungkin akan membutuhkan: • Perawatan di rumah sakit • Cairan infus • Pemantauan tekanan darah • Transfusi untuk mengganti darah yang hilang Ketika baru pulih dari DBD / demam berdarah dengue, biasanya tubuh Anda akan terasa lelah dan tidak fit, namun hal tersebut wajar. Sebagian besar orang baru bisa pulih dari DBD dalam waktu dua minggu, meski kadang-kadang butuh waktu beberapa minggu lagi untuk benar-benar sehat sepenuhnya.', '2020-06-22'),
(7, 'Manfaat Buah bagi Kesehatan yang Tak Perlu Diragukan Lagi', 'Ada banyak alasan sebenarnya yang membuat kita bisa mengonsumsi dan memvariasikan buah-buahan dengan rutin. Namun, manfaat buah bagi kesehatan tersebut dapat dibagi menjadi tiga berikut ini: 1. Buah mengandung vitamin dan mineral yang diperlukan tubuh Bukan rahasia lagi, buah adalah gudangnya nutrisi mikro yang amat diperlukan tubuh - seperti vitamin dan mineral. Salah satu jenis vitamin yang banyak terkandung dalam beragam jenis buah adalah vitamin C. Vitamin C memainkan multifungsi di berbagai sistem, mulai dari sistem imun, kesehatan jantung, kesehatan mata, kesehatan kulit, hingga penting untuk kehamilan. Buah-buahan juga mengantongi beragam molekul antioksidan yang dapat memerangi radikal bebas berlebih penyebab kerusakan sel dan penyakit kronis. Buah yang bisa dikonsumsi dengan kulitnya cenderung lebih tinggi akan antioksidan dan serat. 2. Makan buah menurunkan risiko penyakit Anda mungkin sudah sering mendengar bahwa manfaat buah bagi kesehatan selalu dikaitkan dengan penurunan risiko beragam penyakit. Dalam sebuah metastudi yang dimuat dalam The Journal of Nutrition, disebutkan bahwa rutin konsumsi konsumsi buah-buahan setiap hari menurunkan risiko penyakit jantung hingga 7%. Studi lain menyebutkan bahwa konsumsi buah dan sayuran dikaitkan dengan penurunan tekanan darah tinggi. Konsumsi buah-buahan juga dilaporkan berpotensi untuk mengendalikan kontrol glikemik pada penderita diabetes. 3. Konsumsi buah membantu menurunkan berat badan Sering diabaikan, makan buah sebenarnya membantu memberikan sensasi rasa kenyang untuk perut. Buah-buahan umumnya mengandung kadar serat dan air yang banyak, sehingga perut akan terasa ‘terisi’ apabila kita menjadikannya camilan yang sehat. Selain itu, aktivitas mengunyah saat makan buah juga berkontribusi terhadap rasa kenyang tersebut. Bahkan, buah-buahan seperti apel dan jeruk dilaporkan lebih mengenyangkan dibandingkan makanan lain seperti daging dan telur. Karena memberikan sensasi kenyang setelah mengonsumsinya, makan buah-buahan dikaitkan dengan penurunan berat badan.', '2020-06-22'),
(8, 'Alkohol 70% Bisa Dipakai untuk Berbagai Keperluan Rumah Tangga', 'Alasan alkohol 70% lebih dipilih dibandingkan alkohol 100% Alkohol 70% merupakan bahan yang sudah sering digunakan sebagai antiseptik maupun disinfektan. Tidak hanya di rumah, produk ini juga digunakan untuk hal yang sama di rumah sakit dan berbagai fasilitas kesehatan lainnya. Lalu, mengapa yang dipilih adalah alkohol 70% dan bukan 100%? Bukankah semakin tinggi kadarnya justru semakin baik? Jawabannya, belum tentu. Sebab, alkohol 70% akan membunuh kuman yang ada di suatu permukaan dengan cara menghancurkan dinding sel kuman tersebut. Sehingga, bakteri maupun virus yang menempel di permukaan benda bisa benar-benar mati dan hancur. Sementara itu, alkohol 100% tidak akan menghancurkan dinding sel kuman. Justru, alkohol dengan kadar setinggi itu akan berikatan dengan lapisan protein yang ada di dinding sel kuman dan membentuk lapisan tambahan. Hal ini membuat saat bakteri ataupun virus tidak akan mati, melainkan hanya berubah memasuki fase dorman atau tertidur. Macam-macam fungsi alkohol 70% Karena sifatnya yang efektif untuk membunuh bakteri maupun virus penyebab penyakit, alkohol 70% seringkali digunakan untuk berbagai keperluan, seperti:1. Sebagai antiseptik Antiseptik adalah bahan yang berfungsi untuk membersihkan permukaan tubuh dari kuman seperti bakteri dan virus. Seperti hand sanitizer, misalnya. Untuk bisa efektif membunuh para penyebab penyakit tersebut, suatu produk antiseptik harus menggunakan kadar alkohol di atas 50%. Gunakanlah antiseptik untuk membersihkan tangan setelah menyentuh segala sesuatu yang kerap digunakan bersama, seperti tombol di lift dan gagang pintu. 2. Sebagai disinfektan Fungsi disinfektan sebenarnya sama dengan antiseptik. Namun desinfektan adalah produk yang lebih banyak digunakan untuk benda mati, seperti permukaan meja, telepon genggam, ataupun pegangan tangga. Anda bisa menggunakan alkohol 70% sebagai disinfektan untuk membersihkan berbagai permukaan benda yang sering disentuh, termasuk gunting, termometer, dan keyboard komputer. 3. Menghilangkan mual Menghirup aroma alkohol 70% terbukti efektif untuk hilangkan rasa mual hingga setengahnya. Saat mual, Anda bisa celupkan kapas yang sudah dibentuk bulatan kecil ke dalam alkohol 70% dan hirup perlahan-lahan kapas tersebut hingga rasa mual sudah terasa berkurang. Ingat, jangan terlalu banyak menghirup alkohol. Sebab, terlalu banyak menghirupnya malah bisa menyebabkan gangguan kesehatan lainnya, seperti keracunan. Jadi, gunakanlah dalam jumlah yang terbatas saja.4. Menghilangkan bau sepatu Sepatu kita bisa menjadi sarang bakteri, terutama jika kaki pemakainya termasuk yang mudah berkeringat. Jika tidak rajin dibersihkan, bau sepatu sudah bukan cerita baru lagi. Kabar baiknya, Anda bisa menggunakan alkohol 70% untuk menghilangkannya. Caranya cukup semprotkan sedikit alkohol tersebut ke dalam sepatu lalu jemur hingga kering di bawah sinar matahari. 5. Sebagai kompres dingin Kompres dingin bisa Anda gunakan untuk berbagai keperluan, seperti mengurangi rasa nyeri sendi atau pembengkakan di area tubuh. Untuk menggunakan alkohol 70% sebagai kompres dingin, berikut ini caranya: Masukkan air dan alkohol 70% dengan perbandingan 2:1 ke kantung plastik atau ziplock bag. Setelah itu, ikat atau tutup plastik dengan rapat. Namun sebelumnya, usahakan untuk mengeluarkan sebagian besar udara yang tersisa di dalam kantung, dikeluarkan. Lalu, masukkan plastik tersebut ke plastik lain dan ulangi dengan menutupnya serapat mungkin dan dengan udara sesedikit mungkin. Bekukan di dalam lemari pendingin selama beberapa jam. 6. Menjadikannya sebagai bahan pewangi ruangan Anda juga bisa menggunakan alkohol 70% sebagai disinfektan sekaligus pengharum ruangan. Caranya, cukup masukkan alkohol tersebut ke dalam botol semprot dan kemudian campurkan beberapa tetes essential oil kesukaan Anda.', '2020-06-23'),
(9, 'Vitamin C, Si Penangkal Demam Berdarah Saat Musim Hujan', 'Peranan Vitamin C untuk Mencegah Demam Berdarah Tubuh manusia memiliki sistem kekebalan atau sistem imunitas untuk melawan virus, bakteri, jamur, serta parasit penyebab penyakit. Namun, kekuatan sistem kekebalan setiap orang tidaklah sama dan terkadang imunitas tubuh bisa saja melemah. Saat daya tahan tubuh melemah, kemampuan tubuh untuk melawan mikroorganisme penyebab penyakit menjadi berkurang. Akibatnya, kuman penyebab penyakit dapat dengan mudah menyerang dan menyebabkan infeksi, termasuk demam berdarah. Salah satu cara yang bisa Anda lakukan untuk memperkuat sistem imunitas tubuh dan terhindar dari demam berdarah adalah mencukupi kebutuhan vitamin C. Vitamin ini dapat menjaga sistem kekebalan tubuh agar tetap kuat melawan mikroorganisme penyebab penyakit dan mencegah infeksi. Dosis rekomendasi asupan vitamin C harian yang perlu dipenuhi oleh orang dewasa adalah 75-90 mg. Vitamin ini banyak ditemukan pada sayur serta buah-buahan, dan salah satunya adalah jambu biji. Kandungan Nutrisi Jambu Biji Jambu biji atau guava sangat kaya akan vitamin C. Bahkan, kandungan vitamin C dalam jambu biji dua kali lipat lebih banyak daripada kandungan vitamin C dalam jeruk. Dalam satu buah jambu biji, terkandung sekitar 125 mg vitamin C. Jumlah ini setara dengan 140% dari angka kebutuhan vitamin C harian. Tidak hanya vitamin C, buah jambu biji pun kaya akan kandungan antioksidan, folat, vitamin A, dan serat. Nutrisi-nutrisi tersebut dapat memperkuat daya tahan tubuh untuk melawan virus Dengue penyebab demam berdarah. Selain jambu biji dan jeruk, jeruk bali, kiwi, leci, stroberi, dan pepaya juga bisa menjadi pilihan buah sumber vitamin C yang bisa Anda konsumsi. Dan bukan hanya buah-buahan, asupan vitamin C juga dapat diperoleh dari sayuran, misalnya tomat, bayam, kangkung, kentang, brokoli, dan paprika. Cara Lain Mencegah Demam Berdarah Selain menjaga daya tahan tubuh dengan mengonsumsi makanan bergizi seimbang dan memperbanyak asupan vitamin C, Anda juga perlu melakukan langkah-langkah berikut ini untuk mencegah demam berdarah: 1. Bersihkan dan tutup tempat penampung air Kuras dan bersihkan tempat penampung air, seperti bak mandi, tempayan, ember, atau pot bunga, minimal satu minggu sekali untuk mencegah nyamuk Aedes aegypti berkembang biak. Lakukan secara rutin dan jangan lupa tutup rapat tempat penampung air di rumah setiap selesai dipakai. 2. Hindari menumpuk barang bekas Air hujan bisa tertampung dalam sampah plastik, kaleng, atau sterofoam di sekitar rumah. Wadah penampung air ini dapat menjadi lingkungan yang ideal bagi nyamuk untuk berkembang biak, sehingga bisa menularkan penyakit demam berdarah. Oleh sebab itu, hindari menumpuk barang bekas di dalam rumah atau di lingkungan sekitar rumah. Lebih baik buang atau kubur barang yang sudah tidak terpakai. 3. Gunakan kasa dan kelambu Pasanglah kasa pada setiap lubang ventilasi untuk mencegah nyamuk DBD masuk ke dalam rumah. Selain itu, Anda juga bisa memasang kelambu pada tempat tidur supaya terhindar dari gigitan nyamuk. 4. Gunakan obat anti nyamuk Untuk mencegah gigitan nyamuk DBD, Anda bisa menggunakan losion antinyamuk atau menggunakan obat nyamuk dalam bentuk semprot, bakar, dan elektrik. Namun, penggunaan obat nyamuk perlu dilakukan secara berhati-hati, terutama jika ada bayi, anak-anak, atau penderita asma di dalam rumah.', '2020-06-23'),
(10, '5 Makanan Sehat Pencegah DBD', '  Diketahui DBD merupakan salah satu jenis penyakit yang disebabkan oleh virus yang dibawa oleh nyamuk Aiedes aegypti.Ada berbagai faktor yang menyebabkan seseorang bisa terserang penyakit DBD di bulan puasa ini, salah satunya adalah masalah asupan makanan yang tidak terjaga.Karenanya penting sekali bagi kita untuk memperhatikan asupan makanan yang dikonsumsi.Untuk terhindar penyakit DBD, trombosit dan sistem kekebalan tubuh harus terjaga.Diketahui dalam meningkatkan keduanya kita bisa mengonsumsi makanan sehat yang tinggi akan vitamin C dan antioksidan.Melansir dari NDTV Food, berikut makanan sumber vitamin C dan antioksidan yang bisa meminimalisir risiko terkena DBD selama berpuasa;1. Sayur bayam Bayam kaya akan vitamin C yang dapat membantu sistem imun,  juga mengandung banyak antioksidan beta karoten.Dengan mengonsumsi sayur bayam kita juga dapat menaikkan level trombosit sehingga membuat tubuh terhindar dari penyakit DBD.Manfaat sayur bayam tida', '2020-06-21'),
(11, '4 Kandungan Susu yang Menyehatkan Tubuh Anda', '  Susu sering disebut sebagai minuman yang menyehatkan karena kandungan kalsium yang terkandung di dalamnya. Sebenarnya kandungan susu yang menyehatkan tidak hanya kalsium saja, masih banyak nutrisi bermanfaat lainnya dalam susu yang jarang diketahui oleh banyak orang.\r\nOleh karena itu, penting untuk mengenal berbagai kandungan susu tersebut supaya kebutuhan nutrisi Anda dapat terpenuhi dengan baik. Berikut adalah informasi seputar kandungan susu yang perlu Anda simak\r\n\r\nKandungan susu yang menyehatkan\r\nDi dalam sekitar satu gelas susu (220 ml), terdapat sekitar 122 kalori, 4,8 gram lemak, 115 mg sodium, 12 gram karbohidrat, 12 gram gula, 8 gram protein, dan 293 kalsium.\r\n\r\nSelain itu, susu juga mengandung beragam vitamin dan mineral lainnya yang baik untuk tubuh. Berikut adalah informasi lengkap seputar kandungan susu.\r\n\r\n1. Vitamin dan mineral\r\nSeperti yang diketahui banyak orang, susu merupakan sumber kalsium yang baik. Tidak hanya itu, susu juga mengandum fosfor, riboflavin, vitami', '2020-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `data_deteksi`
--

CREATE TABLE `data_deteksi` (
  `id_deteksi` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `id_kelurahan` int(11) NOT NULL,
  `jumlah_penderita` varchar(100) NOT NULL,
  `curah_hujan` varchar(100) NOT NULL,
  `kelembaban_suhu` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_deteksi`
--

INSERT INTO `data_deteksi` (`id_deteksi`, `id_kecamatan`, `id_kelurahan`, `jumlah_penderita`, `curah_hujan`, `kelembaban_suhu`, `latitude`, `longitude`, `tahun`) VALUES
(8, 1, 1, '10', '23', '23', '-7.930967', '112.655844', '2019'),
(9, 1, 2, '17', '13', '20', '-7.987890', '112.639449', '2019'),
(10, 1, 3, '5', '12', '28', '-7.952558', '112.648778', '2019'),
(11, 1, 4, '23', '11', '21', '-7.937414', '112.646545', '2019'),
(12, 1, 5, '27', '8', '20', '-7.967114', '112.644837', '2019'),
(13, 2, 6, '23', '10', '22', '-7.997273', ' 112.656561', '2019'),
(14, 2, 7, '9', '22', '27', '-7.992615', '112.639380', '2019'),
(15, 2, 8, '7', '9', '18', '-7.972819', '112.657482', '2019'),
(16, 2, 9, '7', '9', '12', '-8.017217', '112.637822', '2019'),
(17, 2, 10, '11', '3', '14', '-7.984604', '112.668998', '2019'),
(19, 3, 11, '7', '8', '29', '-7.973331', '112.627072', '2019'),
(20, 3, 12, '8', '11', '22', '-7.970631', '112.615296', '2019'),
(21, 3, 13, '8', '16', '29', '-7.963097', '112.631066', '2019'),
(22, 3, 14, '12', '4', '18', '-7.987382', '112.632450', '2019'),
(23, 3, 15, '9', '8', '22', '-7.979814', '112.633890', '2019'),
(24, 4, 16, '8', '22', '24', '-7.956453', '112.631475', '2019'),
(25, 4, 17, '6', '23', '26', '-7.959778', '112.613468', '2019'),
(26, 4, 18, '15', '16', '21', '-7.932564', '112.601863', '2019'),
(27, 4, 19, '17', '12', '18', '-7.943751', ' 112.608288', '2019'),
(28, 4, 20, '11', '8', '15', '-7.929689', '112.632669', '2019'),
(29, 5, 21, '14', '12', '17', '-7.992007', '112.609731', '2019'),
(30, 5, 22, '5', '21', '26', '-8.015957', '112.626963', '2019'),
(31, 5, 23, '9', '5', '12', '-7.981893', '112.604657', '2019'),
(32, 5, 24, '14', '4', '12', '-7.9880862', '112.59491', '2019'),
(33, 5, 25, '14', '13', '14', '-7.958744', '112.602762', '2019');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `kecamatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `kecamatan`) VALUES
(1, 'Belimbing'),
(2, 'Kedungkandang'),
(3, 'Klojen'),
(4, 'Lowokwaru'),
(5, 'Sukun');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan1`
--

CREATE TABLE `kecamatan1` (
  `id_kecamatan` int(11) NOT NULL,
  `kecamatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan1`
--

INSERT INTO `kecamatan1` (`id_kecamatan`, `kecamatan`) VALUES
(1, 'Lowokwaru'),
(2, 'Sukun');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id_kelurahan` int(11) NOT NULL,
  `id_kecamatan_fk` int(11) NOT NULL,
  `kelurahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id_kelurahan`, `id_kecamatan_fk`, `kelurahan`) VALUES
(1, 1, 'Arjosari'),
(2, 1, 'Jodipan'),
(3, 1, 'Belimbing'),
(4, 1, 'Purwodadi'),
(5, 1, 'Bunulrejo'),
(6, 2, 'Kedungkandang'),
(7, 2, 'Kotalama'),
(8, 2, 'Sawojajar'),
(9, 2, 'Bumiayu'),
(10, 2, 'Madyopuro'),
(11, 3, 'Klojen'),
(12, 3, 'Gadingsari'),
(13, 3, 'Rampal Cekatan'),
(14, 3, 'Sukoharjo'),
(15, 3, 'Kiduldalem'),
(16, 4, 'Lowokwaru'),
(17, 4, 'Sumbersari'),
(18, 4, 'Tlogomas'),
(19, 4, 'Dinoyo'),
(20, 4, 'Tanjungsekar'),
(21, 5, 'Sukun'),
(22, 5, 'Gadang'),
(23, 5, 'Bandulan'),
(24, 5, 'Mulyorejo'),
(25, 5, 'Karangbesuki');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan1`
--

CREATE TABLE `kelurahan1` (
  `id_kelurahan` int(11) NOT NULL,
  `id_kecamatan_fk` int(11) NOT NULL,
  `kelurahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelurahan1`
--

INSERT INTO `kelurahan1` (`id_kelurahan`, `id_kecamatan_fk`, `kelurahan`) VALUES
(1, 1, 'Lowokwaru'),
(2, 2, 'Sukun');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_artikel`
--
ALTER TABLE `data_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `data_deteksi`
--
ALTER TABLE `data_deteksi`
  ADD PRIMARY KEY (`id_deteksi`),
  ADD KEY `FK_data_deteksi_kecamatan` (`id_kecamatan`),
  ADD KEY `FK_data_deteksi_kelurahan` (`id_kelurahan`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `kecamatan1`
--
ALTER TABLE `kecamatan1`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id_kelurahan`);

--
-- Indexes for table `kelurahan1`
--
ALTER TABLE `kelurahan1`
  ADD PRIMARY KEY (`id_kelurahan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_artikel`
--
ALTER TABLE `data_artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `data_deteksi`
--
ALTER TABLE `data_deteksi`
  MODIFY `id_deteksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_deteksi`
--
ALTER TABLE `data_deteksi`
  ADD CONSTRAINT `FK_data_deteksi_kecamatan` FOREIGN KEY (`id_kecamatan`) REFERENCES `kecamatan` (`id_kecamatan`),
  ADD CONSTRAINT `FK_data_deteksi_kelurahan` FOREIGN KEY (`id_kelurahan`) REFERENCES `kelurahan` (`id_kelurahan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
