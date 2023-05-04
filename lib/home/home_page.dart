import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/type_writer_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 5,
              width: MediaQuery.of(context).size.width * .8,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(80.0),
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/igor.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 50),
                        Column(
                          children: [
                            TypewriterText(
                              text:
                                  'Olá, me chamo Igor, seja bem-vindo(a) à minha página!',
                              style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              duration: Duration(seconds: 3),
                            ),
                            Row(
                              children: [
                                FutureBuilder(
                                  future: Future.delayed(Duration(seconds: 3)),
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.done) {
                                      return Container(
                                        width: 100,
                                        height: 25,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/linkedin.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      );
                                    } else {
                                      return SizedBox.shrink();
                                    }
                                  },
                                ),
                                const SizedBox(width: 50),
                                FutureBuilder(
                                  future: Future.delayed(Duration(seconds: 3)),
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.done) {
                                      return Container(
                                        width: 100,
                                        height: 25,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/whatsapp.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      );
                                    } else {
                                      return SizedBox.shrink();
                                    }
                                  },
                                ),
                                const SizedBox(width: 50),
                                FutureBuilder(
                                  future: Future.delayed(Duration(seconds: 3)),
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.done) {
                                      return Container(
                                        width: 100,
                                        height: 25,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/instagram.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      );
                                    } else {
                                      return SizedBox.shrink();
                                    }
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
