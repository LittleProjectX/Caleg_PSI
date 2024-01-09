// ignore_for_file: library_private_types_in_public_api

import 'package:caleg_psi2/widgets/card_programs.dart';
import 'package:caleg_psi2/widgets/card_testim.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // Listener untuk memantau perubahan posisi scroll
    _scrollController.addListener(() {
      // Logika penanganan perubahan posisi scroll
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isWeb = kIsWeb;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 40),
          child: AppBar(
            backgroundColor: const Color(0xffec3237),
            title: const Align(
              alignment: Alignment.bottomRight,
              child: Text('Follow :'),
            ),
            actions: [
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset('assets/facebook.png'),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset('assets/twitter.png'),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset('assets/instagram.png'),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 25,
                  width: 25,
                  child: Image.asset('assets/youtube.png'),
                ),
              ),
              const SizedBox(width: 15),
            ],
          ),
        ),
        body: Center(
            child: isWeb
                ? Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                            width: double.infinity,
                            height: 70,
                            color: Colors.white,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: double.infinity,
                                  child: Image.asset('assets/psi.png'),
                                ),
                                const SizedBox(width: 10),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Seniman Zendrato',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text(
                                      'Caleg DPRD Dapil : Batam Center,...',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      Expanded(
                        child: ListView(
                          controller: _scrollController,
                          children: [
                            Column(
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 800,
                                      width: double.infinity,
                                      child: Image.asset(
                                        'assets/psi.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      height: 800,
                                      width: double.infinity,
                                      margin: const EdgeInsets.all(100),
                                      child: Image.asset(
                                        'assets/bgr.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      height: 800,
                                      width: double.infinity,
                                      margin: const EdgeInsets.fromLTRB(
                                          20, 50, 20, 120),
                                      padding: const EdgeInsets.fromLTRB(
                                          150, 40, 150, 40),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 50,
                                          ),
                                          SizedBox(
                                            height: 400,
                                            child: Image.asset(
                                                'assets/seniman.png'),
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            'Bersama Caleg PSI Indonesia Bisa Makin Jaya',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 55,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            'Saya meyakini bahwa Kota Batam akan menjadi kota yang maju dan sejahtera, bisa dimulai dari Legislatif yang Profesional, Amanah, dan Jujur. Saya Seniman Zendrato, saya bisa memegang amanah dan kepercayaan itu dari anda semua. Mari jadikan Indonesia Jaya Sejahtera !.',
                                            style: TextStyle(fontSize: 24),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                _scrollController.animateTo(
                                  MediaQuery.of(context).size.height * 1.55,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: const CardTestim(
                                avatar: 'assets/seniman.png',
                                title: 'Profil',
                                subtitle: 'Kenali Profil saya lebih detail.',
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _scrollController.animateTo(
                                  MediaQuery.of(context).size.height * 2.7,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: const CardTestim(
                                avatar: 'assets/target.jpg',
                                title: 'Program',
                                subtitle:
                                    'Visi & Misi untuk membangun Kota Batam Lebih maju lagi.',
                              ),
                            ),
                            const CardTestim(
                              avatar: 'assets/star.jpg',
                              title: 'Testimoni',
                              subtitle:
                                  'Silahkan masukkan testimoni terbaik anda kepada saya.',
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Card(
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                width: double.infinity,
                                height: 500,
                                color: Colors.white,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'PROFIL',
                                      style: TextStyle(
                                        fontSize: 45,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xffec3237),
                                      ),
                                    ),
                                    Text(
                                      'Caleg PSI',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Selamat datang di profil resmi saya sebagai calon legislatif (caleg) nomor 4 di daerah Batu Ampar, yang berkomitmen untuk mewakili aspirasi dan kepentingan masyarakat. Saya adalah Caleg PSI, lahir dan besar di kawasan ini, dengan pemahaman mendalam akan tantangan dan potensi daerah kita. Sebagai bagian dari Partai PSI, saya berkomitmen untuk mendorong pembangunan yang inklusif, meningkatkan kualitas pendidikan, dan memperjuangkan kesejahteraan ekonomi masyarakat. Saya siap untuk menjadi suara Anda di tingkat legislatif. Mari bersama-sama membangun masa depan yang lebih baik untuk Batu Ampar.',
                                      style: TextStyle(fontSize: 24),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Image.asset('assets/seniman.png'),
                            Container(
                              padding: const EdgeInsets.all(15),
                              width: double.infinity,
                              height: 650,
                              color: const Color(0xffec3237),
                              child: const Column(
                                children: [
                                  Text(
                                    'PROGRAM',
                                    style: TextStyle(
                                        fontSize: 45,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'Untuk Indonesia yang Lebih Sejahtera',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CardProgram(
                                      image: 'assets/seniman.png',
                                      title: 'Judul Program 1',
                                      subtitle:
                                          'Deskripsi lengkap tentang program yang akan dilakukan, Deskripsi lengkap tentang program yang akan dilakukan'),
                                  CardProgram(
                                      image: 'assets/seniman.png',
                                      title: 'Judul Program 2',
                                      subtitle:
                                          'Deskripsi lengkap tentang program yang akan dilakukan, Deskripsi lengkap tentang program yang akan dilakukan'),
                                  CardProgram(
                                      image: 'assets/seniman.png',
                                      title: 'Judul Program 3',
                                      subtitle:
                                          'Deskripsi lengkap tentang program yang akan dilakukan, Deskripsi lengkap tentang program yang akan dilakukan')
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  'FOTO TERBARU',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w800),
                                ),
                                Card(
                                  child: Stack(children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 250,
                                        child: Image.asset(
                                          'assets/bridge.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(15),
                                      child: const Column(
                                        children: [
                                          Text(
                                            'Foto Kegiatan 1',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ]),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Card(
                                  child: Stack(children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 250,
                                        child: Image.asset(
                                          'assets/bridge.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(15),
                                      child: const Column(
                                        children: [
                                          Text(
                                            'Foto Kegiatan 2',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ]),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              color: const Color(0xff3D3B40),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.copyright_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Copyright CalegPSI Batam',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                // BATAS PLATFORM
                // BATAS PLATFORM
                // BATAS PLATFORM
                // BATAS PLATFORM
                // BATAS PLATFORM

                : Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                            width: double.infinity,
                            height: 70,
                            color: Colors.white,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: double.infinity,
                                  child: Image.asset('assets/psi.png'),
                                ),
                                const SizedBox(width: 10),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Seniman Zendrato',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text(
                                      'Caleg DPRD Dapil : Batam Center,...',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      Expanded(
                        child: ListView(
                          controller: _scrollController,
                          children: [
                            Column(
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 800,
                                      width: double.infinity,
                                      child: Image.asset(
                                        'assets/psi.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      height: 800,
                                      width: double.infinity,
                                      margin: const EdgeInsets.fromLTRB(
                                          20, 50, 20, 120),
                                      child: Image.asset(
                                        'assets/bgr.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      height: 800,
                                      width: double.infinity,
                                      margin: const EdgeInsets.fromLTRB(
                                          20, 50, 20, 120),
                                      padding: const EdgeInsets.all(15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset('assets/seniman.png'),
                                          const SizedBox(height: 10),
                                          const Text(
                                            'Bersama Caleg PSI Indonesia Bisa Makin Jaya',
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            'Saya meyakini bahwa Kota Batam akan menjadi kota yang maju dan sejahtera, bisa dimulai dari Legislatif yang Profesional, Amanah, dan Jujur. Saya Seniman Zendrato, saya bisa memegang amanah dan kepercayaan itu dari anda semua. Mari jadikan Indonesia Jaya Sejahtera !.',
                                            style: TextStyle(fontSize: 22),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                _scrollController.animateTo(
                                  MediaQuery.of(context).size.height * 1.55,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: const CardTestim(
                                avatar: 'assets/seniman.png',
                                title: 'Profil',
                                subtitle: 'Kenali Profil saya lebih detail.',
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _scrollController.animateTo(
                                  MediaQuery.of(context).size.height * 2.7,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: const CardTestim(
                                avatar: 'assets/target.jpg',
                                title: 'Program',
                                subtitle:
                                    'Visi & Misi untuk membangun Kota Batam Lebih maju lagi.',
                              ),
                            ),
                            const CardTestim(
                              avatar: 'assets/star.jpg',
                              title: 'Testimoni',
                              subtitle:
                                  'Silahkan masukkan testimoni terbaik anda kepada saya.',
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Card(
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                width: double.infinity,
                                height: 500,
                                color: Colors.white,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'PROFIL',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xffec3237),
                                      ),
                                    ),
                                    Text(
                                      'Caleg PSI',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Selamat datang di profil resmi saya sebagai calon legislatif (caleg) nomor 4 di daerah Batu Ampar, yang berkomitmen untuk mewakili aspirasi dan kepentingan masyarakat. Saya adalah Caleg PSI, lahir dan besar di kawasan ini, dengan pemahaman mendalam akan tantangan dan potensi daerah kita. Sebagai bagian dari Partai PSI, saya berkomitmen untuk mendorong pembangunan yang inklusif, meningkatkan kualitas pendidikan, dan memperjuangkan kesejahteraan ekonomi masyarakat. Saya siap untuk menjadi suara Anda di tingkat legislatif. Mari bersama-sama membangun masa depan yang lebih baik untuk Batu Ampar.',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Image.asset('assets/seniman.png'),
                            Container(
                              padding: const EdgeInsets.all(15),
                              width: double.infinity,
                              height: 650,
                              color: const Color(0xffec3237),
                              child: const Column(
                                children: [
                                  Text(
                                    'PROGRAM',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'Untuk Indonesia yang Lebih Sejahtera',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CardProgram(
                                      image: 'assets/seniman.png',
                                      title: 'Judul Program 1',
                                      subtitle:
                                          'Deskripsi lengkap tentang program yang akan dilakukan, Deskripsi lengkap tentang program yang akan dilakukan'),
                                  CardProgram(
                                      image: 'assets/seniman.png',
                                      title: 'Judul Program 2',
                                      subtitle:
                                          'Deskripsi lengkap tentang program yang akan dilakukan, Deskripsi lengkap tentang program yang akan dilakukan'),
                                  CardProgram(
                                      image: 'assets/seniman.png',
                                      title: 'Judul Program 3',
                                      subtitle:
                                          'Deskripsi lengkap tentang program yang akan dilakukan, Deskripsi lengkap tentang program yang akan dilakukan')
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  'FOTO TERBARU',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w800),
                                ),
                                Card(
                                  child: Stack(children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 250,
                                        child: Image.asset(
                                          'assets/bridge.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(15),
                                      child: const Column(
                                        children: [
                                          Text(
                                            'Foto Kegiatan 1',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ]),
                                ),
                                Card(
                                  child: Stack(children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 250,
                                        child: Image.asset(
                                          'assets/bridge.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(15),
                                      child: const Column(
                                        children: [
                                          Text(
                                            'Foto Kegiatan 2',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ]),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              color: const Color(0xff3D3B40),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.copyright_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Copyright CalegPSI Batam',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )));
  }
}
