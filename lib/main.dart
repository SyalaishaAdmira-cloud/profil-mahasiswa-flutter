import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FC),

      appBar: AppBar(
        title: const Text(
          'Profil Mahasiswa',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Profil
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 35,
              ),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/foto.jpeg',
                        width: 125,
                        height: 125,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'Syalaisha Admira',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    'Mahasiswa Informatika',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'NPM: 25670023',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // Informasi Mahasiswa
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Informasi Mahasiswa',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Card(
                    elevation: 3,
                    color: Colors.white,
                    child: const Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.badge,
                            color: Colors.blue,
                          ),
                          title: Text('NIM'),
                          subtitle: Text('25670023'),
                        ),

                        Divider(height: 1),

                        ListTile(
                          leading: Icon(
                            Icons.school,
                            color: Colors.blue,
                          ),
                          title: Text('Program Studi'),
                          subtitle: Text('Informatika'),
                        ),

                        Divider(height: 1),

                        ListTile(
                          leading: Icon(
                            Icons.account_balance,
                            color: Colors.blue,
                          ),
                          title: Text('Perguruan Tinggi'),
                          subtitle: Text(
                            'Universitas PGRI Semarang',
                          ),
                        ),

                        Divider(height: 1),

                        ListTile(
                          leading: Icon(
                            Icons.menu_book,
                            color: Colors.blue,
                          ),
                          title: Text('Fakultas'),
                          subtitle: Text(
                            'Teknik dan Informatika',
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Tombol Detail
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailPage(
                              nama: 'Syalaisha Admira',
                              npm: '25670023',
                              prodi: 'Informatika',
                              email: 'Email mahasiswa',
                            ),
                          ),
                        );
                      },
                      icon: const Icon(Icons.person),
                      label: const Text(
                        'Lihat Detail Profil',
                        style: TextStyle(fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Center(
                    child: Text(
                      'Profil Mahasiswa',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Halaman Detail
class DetailPage extends StatelessWidget {
  final String nama;
  final String npm;
  final String prodi;
  final String email;

  const DetailPage({
    super.key,
    required this.nama,
    required this.npm,
    required this.prodi,
    required this.email,
  });

  Widget informasi(
    IconData ikon,
    String judul,
    String isi,
  ) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue.shade50,
        child: Icon(ikon, color: Colors.blue),
      ),
      title: Text(
        judul,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 13,
        ),
      ),
      subtitle: Text(
        isi,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget bagianJudul(String judul) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 10,
      ),
      child: Text(
        judul,
        style: const TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget tombolMenu( 
    BuildContext context,
    String judul,
    IconData ikon,
    Widget halaman,
    )
  {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade50,
          child: Icon(ikon, color: Colors.blue),
        ),
        title: Text(
          judul,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => halaman,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FC),

      appBar: AppBar(
        title: const Text('Detail Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // PROFIL UTAMA
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/foto.jpeg',
                        width: 110,
                        height: 110,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 5),

                  Text(
                    'NPM: $npm',
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'MAHASISWA AKTIF',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // DESKRIPSI DIRI
            bagianJudul('Tentang Saya'),

            Card(
              elevation: 3,
              child: const Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  'Saya merupakan mahasiswa Program Studi '
                  'Informatika di Universitas PGRI Semarang. '
                  'Saya  memiliki  ketertarikan  pada  bidang '
                  ' teknologi,  pemrograman,  dan  pengembangan  aplikasi. '
                  'Saya  terus  berusaha  mengembangkan  pengetahuan  serta '
                  'kemampuan  melalui  kegiatan  perkuliahan  dan  praktik.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                  ),
                ),
              ),
            ),

            // IDENTITAS
            bagianJudul('Identitas Mahasiswa'),

            Card(
              elevation: 3,
              child: Column(
                children: [
                  informasi(
                    Icons.person,
                    'Nama Lengkap',
                    'Syalaisha Admira',
                  ),
                  const Divider(height: 1),
                  informasi(
                    Icons.badge,
                    'NPM',
                    '25670023',
                  ),
                  const Divider(height: 1),
                  informasi(
                    Icons.email,
                    'Email',
                    'ponselmira352@gmail.com',
                  ),
                ],
              ),
            ),

            // AKADEMIK
            bagianJudul('Informasi Akademik'),

            Card(
              elevation: 3,
              child: Column(
                children: [
                  informasi(
                    Icons.school,
                    'Program Studi',
                    'Informatika',
                  ),
                  const Divider(height: 1),
                  informasi(
                    Icons.menu_book,
                    'Fakultas',
                    'Teknik dan Informatika',
                  ),
                  const Divider(height: 1),
                  informasi(
                    Icons.calendar_month,
                    'Semester',
                    '3',
                  ),
                  const Divider(height: 1),
                  informasi(
                    Icons.account_balance,
                    'Universitas',
                    'Universitas PGRI Semarang',
                  ),
                  const Divider(height: 1),
                  informasi(
                    Icons.location_on,
                    'Lokasi Kampus',
                    'Semarang, Jawa Tengah',
                  ),
                ],
              ),
            ),

            // MENU TAMBAHAN
            bagianJudul('Informasi Lainnya'),

            tombolMenu(
              context,
              'Riwayat Pendidikan',
              Icons.school,
              const PendidikanPage(),
            ),

            tombolMenu(
              context,
              'Keahlian dan Kemampuan',
              Icons.computer,
              const KeahlianPage(),
            ),

            tombolMenu(
              context,
              'Informasi Kontak',
              Icons.contact_mail,
              const KontakPage(),
            ),

            const SizedBox(height: 20),

            // TOMBOL KEMBALI
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Kembali ke Beranda'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                'Profil Mahasiswa',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class PendidikanPage extends StatelessWidget {
  const PendidikanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Pendidikan'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(
              Icons.school,
              size: 80,
              color: Colors.blue,
            ),

            const SizedBox(height: 10),

            const Text(
              'Riwayat Pendidikan',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 4,
              child: const ListTile(
                leading: Icon(Icons.school, color: Colors.blue),
                title: Text(
                  'Sekolah Dasar (SD)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('SD N 04 Bendosari'),
              ),
            ),

            Card(
              elevation: 4,
              child: const ListTile(
                leading: Icon(Icons.school, color: Colors.blue),
                title: Text(
                  'Sekolah Menengah Pertama (SMP)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('SMP PMS Batang'),
              ),
            ),

            Card(
              elevation: 4,
              child: const ListTile(
                leading: Icon(Icons.school, color: Colors.blue),
                title: Text(
                  'Sekolah Menengah Atas (SMA)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('SMA Wahid Hasyim'),
              ),
            ),

            Card(
              elevation: 4,
              child: const ListTile(
                leading: Icon(Icons.account_balance, color: Colors.blue),
                title: Text(
                  'Perguruan Tinggi',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Universitas PGRI Semarang\n'
                  'Program Studi Informatika',
                ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Kembali'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class KeahlianPage extends StatelessWidget {
  const KeahlianPage({super.key});

  Widget kartuKeahlian(
    IconData ikon,
    String judul,
    String deskripsi,
    double nilai,
  ) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue.shade100,
                  child: Icon(ikon, color: Colors.blue),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    judul,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(deskripsi),
            const SizedBox(height: 12),
            LinearProgressIndicator(
              value: nilai,
              minHeight: 8,
              backgroundColor: Colors.grey.shade300,
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keahlian'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundColor: Color(0xFFE3F2FD),
              child: Icon(
                Icons.computer,
                size: 50,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Kemampuan dan Keahlian',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Berikut beberapa kemampuan yang saya pelajari '
              'dan kembangkan selama menempuh pendidikan.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 25),

            kartuKeahlian(
              Icons.code,
              'Pemrograman',
              'Mempelajari dasar pemrograman dan logika algoritma.',
              0.65,
            ),

            kartuKeahlian(
              Icons.web,
              'Desain Web',
              'Memahami dasar HTML dan CSS untuk membuat halaman web.',
              0.70,
            ),

            kartuKeahlian(
              Icons.storage,
              'Basis Data',
              'Mempelajari pengelolaan data dan dasar SQL.',
              0.60,
            ),

            kartuKeahlian(
              Icons.phone_android,
              'Pengembangan Aplikasi',
              'Mempelajari pembuatan aplikasi mobile menggunakan Flutter.',
              0.55,
            ),

            kartuKeahlian(
              Icons.groups,
              'Kerja Sama Tim',
              'Mampu bekerja sama dan berdiskusi dalam menyelesaikan tugas.',
              0.75,
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Kembali'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class KontakPage extends StatelessWidget {
  const KontakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Icon(
                    Icons.contact_mail,
                    size: 80,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 15),
                const Center(
                  child: Text(
                    'Informasi Kontak',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(height: 30),

                const ListTile(
                  leading: Icon(Icons.person, color: Colors.blue),
                  title: Text('Nama Lengkap'),
                  subtitle: Text('Syalaisha Admira'),
                ),

                const ListTile(
                  leading: Icon(Icons.phone, color: Colors.blue),
                  title: Text('Nomor HP'),
                  subtitle: Text('0815 7383 7073'),
                ),

                const ListTile(
                  leading: Icon(Icons.email, color: Colors.blue),
                  title: Text('Email'),
                  subtitle: Text('ponselmira352@gmail.com'),
                ),

                const ListTile(
                  leading: Icon(Icons.school, color: Colors.blue),
                  title: Text('Program Studi'),
                  subtitle: Text('Informatika'),
                ),

                const ListTile(
                  leading: Icon(Icons.location_on, color: Colors.blue),
                  title: Text('Universitas'),
                  subtitle: Text('Universitas PGRI Semarang'),
                ),

                const SizedBox(height: 15),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Kembali'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
