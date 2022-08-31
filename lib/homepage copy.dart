import 'dart:convert';

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // buat background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/monas-cover-fix.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //mulai dari sini
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "Han Vito Prima",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Signika',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          height: 36,
                          width: 36,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Image.asset('image/Profile-Pic.png'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Image.asset('image/Logo Enjoy.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Row(children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                            height: 191,
                            child: Row(children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Suhu(nama: 'max', angka: '30°C'),
                                      Suhu(nama: 'avg', angka: '25°C'),
                                      Suhu(
                                        nama: 'min',
                                        angka: '21°C',
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  padding: EdgeInsets.only(left: 22, top: 10),
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(239, 126, 49, 1),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('image/cloudy.png'),
                                      const Text(
                                        'Sedang \nBerawan',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Signika',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 5),
                                        child: Container(
                                          color: Colors.white,
                                          width: double.infinity,
                                          height: 1.5,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '12:00',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Text(
                                        'Kemang, Jakarta Selatan',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Container(
                                width: double.infinity,
                                height: 132,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 0.3),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: Image.asset('image/Badge.png'),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 0),
                                      child: Text(
                                        'WISATAWAN\nTELADAN',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      '3500/10000',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 8,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 51,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 0.3),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 4),
                                    child: Text(
                                      '12',
                                      style: TextStyle(
                                        fontSize: 32,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Wisata\ntersimpan',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),

                  //batas kedua
                  Padding(
                    padding: EdgeInsets.only(right: 15, top: 14),
                    child: Row(children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                            height: 164,
                            child: Row(children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  padding: EdgeInsets.only(left: 20, top: 16),
                                  color: Color.fromRGBO(213, 51, 124, 1),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('image/share-location 2.png'),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          'Wisata terdekat',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          '13 objek wisata',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.only(left: 0),
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(239, 126, 49, 1),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 13, top: 30),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                    'image/searchbutton.png'),
                                                const Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 8),
                                                  child: Text(
                                                    'Cari Berdasarkan\nKata kunci',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Color.fromRGBO(
                                                            207, 207, 207, 1)),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            color:
                                                Color.fromRGBO(239, 126, 49, 1),
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Lihat Semua',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 0),
                              child: Container(
                                width: double.infinity,
                                height: 164,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(0, 133, 205, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                padding: EdgeInsets.only(top: 36),
                                child: Column(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 93,
                                      height: 22,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(76, 170, 220, 1),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 23,
                                            decoration: const BoxDecoration(
                                              color: Color.fromRGBO(
                                                  130, 195, 231, 1),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'USD',
                                                style: TextStyle(
                                                  fontSize: 6,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.0),
                                            child: Text(
                                              '1',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5),
                                      child: Image.asset('image/convert.png'),
                                    ),
                                    Container(
                                      width: 93,
                                      height: 22,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(76, 170, 220, 1),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 23,
                                            decoration: const BoxDecoration(
                                              color: Color.fromRGBO(
                                                  130, 195, 231, 1),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'Rp',
                                                style: TextStyle(
                                                  fontSize: 6,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.0),
                                            child: Text(
                                              '14.500',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15.0, right: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          Text(
                                            'berdasarkan kurs tanggal 30\nAgustus 2022, 08:00 WIB',
                                            style: TextStyle(
                                                fontSize: 6,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      height: 125,
                      padding: EdgeInsets.only(left: 14),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Container(
                                width: 125,
                                child: Stack(
                                  children: [
                                    Image.asset('image/menteng.png'),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 15),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          'MENTENG',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Container(
                                width: 125,
                                child: Stack(
                                  children: [
                                    Image.asset('image/sudirman.png'),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 15),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          'SUDIRMAN',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Container(
                                width: 125,
                                child: Stack(
                                  children: [
                                    Image.asset('image/manggabesar.png'),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 15),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          'MANGGA\nBESAR',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Container(
                                width: 125,
                                child: Stack(
                                  children: [
                                    Image.asset('image/manggabesar.png'),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 15),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          'MANGGA\nBESAR',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Container(
                                width: 125,
                                child: Stack(
                                  children: [
                                    Image.asset('image/manggabesar.png'),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 15),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          'MANGGA\nBESAR',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Container(
                      padding: EdgeInsets.only(left: 14, right: 14),
                      height: 125,
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromRGBO(255, 255, 255, 0.3),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Image.asset('image/gift-card.png'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14),
                                      child: Text('KUPON'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromRGBO(255, 255, 255, 0.3),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Image.asset('image/talk.png'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14),
                                      child: Text('KELUHAN'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromRGBO(255, 255, 255, 0.3),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child:
                                          Image.asset('image/phone-call.png'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14),
                                      child: Text(
                                        'PANGGILAN\nDARURAT',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 11,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Container(
                      padding: EdgeInsets.only(top: 18, left: 20, right: 20),
                      height: 300,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(213, 51, 124, 0.5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'HASHGRAM',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          const Text(
                            '#EnjoyJakartaApp',
                            style: TextStyle(
                                color: Color.fromRGBO(224, 224, 224, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 6),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.3),
                                        ),
                                        child: Stack(
                                          children: [
                                            Image.asset('image/hashgram1.png'),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8, right: 5),
                                                child: Container(
                                                  width: 45,
                                                  height: 12,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.5),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 5),
                                                        child: Image.asset(
                                                            'image/instagram.png'),
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 2,
                                                                bottom: 1.5),
                                                        child: Text(
                                                          '@wargajkt',
                                                          style: TextStyle(
                                                            fontSize: 5,
                                                            color:
                                                                Color.fromRGBO(
                                                                    67,
                                                                    67,
                                                                    67,
                                                                    1),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        child: Stack(
                                          children: [
                                            Image.asset('image/hashgram2.png'),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8, right: 5),
                                                child: Container(
                                                  width: 45,
                                                  height: 12,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.5),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 5),
                                                        child: Image.asset(
                                                            'image/instagram.png'),
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 2,
                                                                bottom: 1.5),
                                                        child: Text(
                                                          '@wargajkt',
                                                          style: TextStyle(
                                                            fontSize: 5,
                                                            color:
                                                                Color.fromRGBO(
                                                                    67,
                                                                    67,
                                                                    67,
                                                                    1),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 6),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.3),
                                        ),
                                        child: Stack(
                                          children: [
                                            Image.asset('image/hashgram3.png'),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8, right: 5),
                                                child: Container(
                                                  width: 45,
                                                  height: 12,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.5),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 5),
                                                        child: Image.asset(
                                                            'image/instagram.png'),
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 2,
                                                                bottom: 1.5),
                                                        child: Text(
                                                          '@wargajkt',
                                                          style: TextStyle(
                                                            fontSize: 5,
                                                            color:
                                                                Color.fromRGBO(
                                                                    67,
                                                                    67,
                                                                    67,
                                                                    1),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 6),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.3),
                                        ),
                                        child: Stack(
                                          children: [
                                            Image.asset('image/hashgram1.png'),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8, right: 5),
                                                child: Container(
                                                  width: 45,
                                                  height: 12,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.5),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 5),
                                                        child: Image.asset(
                                                            'image/instagram.png'),
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 2,
                                                                bottom: 1.5),
                                                        child: Text(
                                                          '@wargajkt',
                                                          style: TextStyle(
                                                            fontSize: 5,
                                                            color:
                                                                Color.fromRGBO(
                                                                    67,
                                                                    67,
                                                                    67,
                                                                    1),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        child: Stack(
                                          children: [
                                            Image.asset('image/hashgram2.png'),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8, right: 5),
                                                child: Container(
                                                  width: 45,
                                                  height: 12,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.5),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 5),
                                                        child: Image.asset(
                                                            'image/instagram.png'),
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 2,
                                                                bottom: 1.5),
                                                        child: Text(
                                                          '@wargajkt',
                                                          style: TextStyle(
                                                            fontSize: 5,
                                                            color:
                                                                Color.fromRGBO(
                                                                    67,
                                                                    67,
                                                                    67,
                                                                    1),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 6),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.3),
                                        ),
                                        child: Stack(
                                          children: [
                                            Image.asset('image/hashgram3.png'),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8, right: 5),
                                                child: Container(
                                                  width: 45,
                                                  height: 12,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.5),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 5),
                                                        child: Image.asset(
                                                            'image/instagram.png'),
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 2,
                                                                bottom: 1.5),
                                                        child: Text(
                                                          '@wargajkt',
                                                          style: TextStyle(
                                                            fontSize: 5,
                                                            color:
                                                                Color.fromRGBO(
                                                                    67,
                                                                    67,
                                                                    67,
                                                                    1),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Suhu extends StatelessWidget {
  late final String nama;
  late final String angka;

  Suhu({required this.nama, required this.angka});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nama,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(217, 217, 217, 1),
            ),
          ),
          Text(
            angka,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(108, 108, 108, 1)),
          ),
        ],
      ),
    );
  }
}
