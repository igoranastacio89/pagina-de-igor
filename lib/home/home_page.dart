import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/type_writer_text.dart';

//
// class MyHomePage1 extends StatefulWidget {
//   const MyHomePage1({super.key});
//
//   @override
//   State<MyHomePage1> createState() => _MyHomePage1State();
// }
//
// class _MyHomePage1State extends State<MyHomePage1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         child: Stack(
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height,
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage(
//                       'https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Center(
//               child: Container(
//                 color: Colors.white,
//                 height: MediaQuery.of(context).size.height * 5,
//                 width: MediaQuery.of(context).size.width * .8,
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(80.0),
//                       child: Row(
//                         children: [
//                           Container(
//                             width: 150,
//                             height: 150,
//                             decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                               image: DecorationImage(
//                                 image: AssetImage('assets/images/igor.jpeg'),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(width: 50),
//                           Wrap(
//                             children: [
//                               Column(
//                                 children: [
//                                   SizedBox(
//                                     width:
//                                         MediaQuery.of(context).size.width * .3,
//                                     child: Wrap(
//                                       children: [
//                                         TypewriterText(
//                                           text:
//                                               'Olá, me chamo Igor, seja bem-vindo(a) à minha página!',
//                                           style: GoogleFonts.roboto(
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.bold,
//                                             color: Colors.black,
//                                           ),
//                                           duration: Duration(seconds: 3),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Center(
//                                     child: Row(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         FutureBuilder(
//                                           future: Future.delayed(
//                                               Duration(seconds: 3)),
//                                           builder: (context, snapshot) {
//                                             if (snapshot.connectionState ==
//                                                 ConnectionState.done) {
//                                               return Container(
//                                                 width: 100,
//                                                 height: 25,
//                                                 decoration: const BoxDecoration(
//                                                   image: DecorationImage(
//                                                     image: AssetImage(
//                                                         'assets/images/linkedin.jpg'),
//                                                     fit: BoxFit.fill,
//                                                   ),
//                                                 ),
//                                               );
//                                             } else {
//                                               return SizedBox.shrink();
//                                             }
//                                           },
//                                         ),
//                                         SizedBox(width: 20),
//                                         FutureBuilder(
//                                           future: Future.delayed(
//                                               Duration(seconds: 3)),
//                                           builder: (context, snapshot) {
//                                             if (snapshot.connectionState ==
//                                                 ConnectionState.done) {
//                                               return Container(
//                                                 width: 100,
//                                                 height: 25,
//                                                 decoration: const BoxDecoration(
//                                                   image: DecorationImage(
//                                                     image: AssetImage(
//                                                         'assets/images/whatsapp.jpg'),
//                                                     fit: BoxFit.fill,
//                                                   ),
//                                                 ),
//                                               );
//                                             } else {
//                                               return SizedBox.shrink();
//                                             }
//                                           },
//                                         ),
//                                         SizedBox(width: 20),
//                                         FutureBuilder(
//                                           future: Future.delayed(
//                                               Duration(seconds: 3)),
//                                           builder: (context, snapshot) {
//                                             if (snapshot.connectionState ==
//                                                 ConnectionState.done) {
//                                               return Container(
//                                                 width: 100,
//                                                 height: 25,
//                                                 decoration: const BoxDecoration(
//                                                   image: DecorationImage(
//                                                     image: AssetImage(
//                                                         'assets/images/instagram.jpg'),
//                                                     fit: BoxFit.fill,
//                                                   ),
//                                                 ),
//                                               );
//                                             } else {
//                                               return SizedBox.shrink();
//                                             }
//                                           },
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//           if (constraints.maxWidth > 1200) {
//             // desktop
//             return _buildDesktopLayout(context);
//           } else if (constraints.maxWidth > 600) {
//             // tablet
//             return _buildTabletLayout();
//           } else {
//             // smartphone
//             return _buildSmartphoneLayout();
//           }
//         },
//       ),
//     );
//   }
//
//   Widget _buildDesktopLayout(context) {
//     return Stack(
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage(
//                   'https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         Container(
//           child: Center(
//             child: Column(
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     color: Colors.white,
//                     child: AspectRatio(
//                       aspectRatio: 16 / 9,
//                       child: Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(28.0),
//                           child: Column(
//                             children: [
//                               Container(
//                                 width: 150,
//                                 height: 150,
//                                 decoration: const BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   image: DecorationImage(
//                                     image:
//                                         AssetImage('assets/images/igor.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(height: 25),
//                               TypewriterText(
//                                 text:
//                                     'Olá, me chamo Igor, seja bem-vindo(a) à minha página!',
//                                 style: GoogleFonts.roboto(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black,
//                                 ),
//                                 duration: Duration(seconds: 3),
//                               ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   FutureBuilder(
//                                     future:
//                                         Future.delayed(Duration(seconds: 3)),
//                                     builder: (context, snapshot) {
//                                       if (snapshot.connectionState ==
//                                           ConnectionState.done) {
//                                         return Container(
//                                           width: 100,
//                                           height: 25,
//                                           decoration: const BoxDecoration(
//                                             image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/images/linkedin.jpg'),
//                                               fit: BoxFit.fill,
//                                             ),
//                                           ),
//                                         );
//                                       } else {
//                                         return SizedBox.shrink();
//                                       }
//                                     },
//                                   ),
//                                   SizedBox(
//                                       width: MediaQuery.of(context).size.width *
//                                           .05),
//                                   FutureBuilder(
//                                     future:
//                                         Future.delayed(Duration(seconds: 3)),
//                                     builder: (context, snapshot) {
//                                       if (snapshot.connectionState ==
//                                           ConnectionState.done) {
//                                         return Container(
//                                           width: 100,
//                                           height: 25,
//                                           decoration: const BoxDecoration(
//                                             image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/images/whatsapp.jpg'),
//                                               fit: BoxFit.fill,
//                                             ),
//                                           ),
//                                         );
//                                       } else {
//                                         return SizedBox.shrink();
//                                       }
//                                     },
//                                   ),
//                                   SizedBox(
//                                       width: MediaQuery.of(context).size.width *
//                                           .05),
//                                   FutureBuilder(
//                                     future:
//                                         Future.delayed(Duration(seconds: 3)),
//                                     builder: (context, snapshot) {
//                                       if (snapshot.connectionState ==
//                                           ConnectionState.done) {
//                                         return Container(
//                                           width: 100,
//                                           height: 25,
//                                           decoration: const BoxDecoration(
//                                             image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/images/instagram.jpg'),
//                                               fit: BoxFit.fill,
//                                             ),
//                                           ),
//                                         );
//                                       } else {
//                                         return SizedBox.shrink();
//                                       }
//                                     },
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     color: Colors.black12,
//                     child: Column(
//                       children: [
//                         Expanded(
//                           flex: 1,
//                           child: FractionallySizedBox(
//                             widthFactor: 0.8,
//                             child: Container(
//                               color: Colors.lightBlue,
//                               child: Center(
//                                 child: TypewriterText(
//                                   text:
//                                       'Olá, me chamo Igor, seja bem-vindo(a) à minha página!',
//                                   style: GoogleFonts.roboto(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black,
//                                   ),
//                                   duration: Duration(seconds: 3),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildTabletLayout() {
//     return Column(
//       children: [
//         Expanded(
//           flex: 1,
//           child: Container(
//             color: Colors.blue,
//             child: AspectRatio(
//               aspectRatio: 16 / 9,
//               child: Center(
//                 child: Text('Vídeo'),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 1,
//           child: Container(
//             color: Colors.green,
//             child: Column(
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: FractionallySizedBox(
//                     widthFactor: 0.8,
//                     child: Container(
//                       color: Colors.red,
//                       child: Center(
//                         child: Text('Conteúdo 1'),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: FractionallySizedBox(
//                     widthFactor: 0.8,
//                     child: Container(
//                       color: Colors.yellow,
//                       child: Center(
//                         child: Text('Conteúdo 2'),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildSmartphoneLayout() {
//     return Column(
//       children: [
//         Expanded(
//           flex: 1,
//           child: Container(
//             color: Colors.blue,
//             child: AspectRatio(
//               aspectRatio: 16 / 9,
//               child: Center(
//                 child: Text('Vídeo'),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 1,
//           child: Container(
//             color: Colors.green,
//             child: Column(
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: FractionallySizedBox(
//                     heightFactor: 0.5,
//                     child: Container(
//                       color: Colors.red,
//                       child: Center(
//                         child: Text('Conteúdo 1'),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: FractionallySizedBox(
//                     heightFactor: 0.5,
//                     child: Container(
//                       color: Colors.yellow,
//                       child: Center(
//                         child: Text('Conteúdo 2'),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class ResponsiveLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         physics: AlwaysScrollableScrollPhysics(),
//         child: Container(
//           height: MediaQuery.of(context).size.height + 500,
//           child: _buildLayout(context),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildLayout(BuildContext context) {
//     if (MediaQuery.of(context).size.width > 1200) {
//       return _buildDesktopLayout();
//     } else if (MediaQuery.of(context).size.width > 600) {
//       return _buildTabletLayout();
//     } else {
//       return _buildSmartphoneLayout();
//     }
//   }
//
//   Widget _buildDesktopLayout() {
//     return Column(
//       children: [
//         Expanded(
//           flex: 1,
//           child: Container(
//             color: Colors.blue,
//             child: AspectRatio(
//               aspectRatio: 16 / 9,
//               child: Center(
//                 child: Text('Vídeo'),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 2,
//           child: Container(
//             color: Colors.green,
//             child: Column(
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     color: Colors.red,
//                     child: Center(
//                       child: Text('Conteúdo 1'),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     color: Colors.yellow,
//                     child: Center(
//                       child: Text('Conteúdo 2'),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildTabletLayout() {
//     return Row(
//       children: [
//         Expanded(
//           flex: 1,
//           child: Container(
//             color: Colors.blue,
//             child: AspectRatio(
//               aspectRatio: 16 / 9,
//               child: Center(
//                 child: Text('Vídeo'),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 1,
//           child: Container(
//             color: Colors.green,
//             child: Column(
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     color: Colors.red,
//                     child: Center(
//                       child: Text('Conteúdo 1'),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     color: Colors.yellow,
//                     child: Center(
//                       child: Text('Conteúdo 2'),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildSmartphoneLayout() {
//     return Column(
//       children: [
//         Expanded(
//           flex: 1,
//           child: Container(
//             color: Colors.blue,
//             child: AspectRatio(
//               aspectRatio: 16 / 9,
//               child: Center(
//                 child: Text('Vídeo'),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 1,
//           child: Container(
//             color: Colors.green,
//             child: Column(
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: FractionallySizedBox(
//                     widthFactor: 0.8,
//                     child: Container(
//                       color: Colors.red,
//                       child: Center(
//                         child: Text('Conteúdo 1'),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: FractionallySizedBox(
//                     widthFactor: 0.8,
//                     child: Container(
//                       color: Colors.yellow,
//                       child: Center(
//                         child: Text('Conteúdo 2'),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         physics: AlwaysScrollableScrollPhysics(),
//         child: Container(
//           height: MediaQuery.of(context).size.height + 500,
//           child: _buildLayout(context),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildLayout(BuildContext context) {
//     if (MediaQuery.of(context).size.width > 1200) {
//       return _buildDesktopLayout();
//     } else if (MediaQuery.of(context).size.width > 600) {
//       return _buildTabletLayout();
//     } else {
//       return _buildSmartphoneLayout();
//     }
//   }

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (MediaQuery.of(context).size.width > 600)
          ? const EdgeInsets.only(top: 18.0, right: 18, left: 50, bottom: 50)
          : const EdgeInsets.all(18.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meu Perfil'),
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Container(
              height: (MediaQuery.of(context).size.width > 600)
                  ? MediaQuery.of(context).size.height + 500
                  : MediaQuery.of(context).size.height + 1000,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 600) {
                    return _buildWideLayout();
                  } else {
                    return _buildNarrowLayout();
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWideLayout() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/igor_formal.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Igor Veríssimo Anastácio Santos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Contato: igoranastacio89@gmail.com\nTelefone: (35) 99987-8904',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 40),
              // TypewriterText(
              //   text: 'Resumo profissional:\n\nFormado em Engenharia de Controle e Automação pela Universidade Federal de Lavras. Desenvolvedor Flutter Jr. com experiência no desenvolvimento de aplicativos móveis utilizando metodologias ágeis de desenvolvimento de software. Anteriormente, atuei como Gerente/Supervisor de Logística, onde fui responsável pela gestão de custos e acompanhamento de KPIs de transporte, bem como pela gestão de pessoal e pelo planejamento e controle das manutenções dos veículos da empresa. Também tenho experiência como Supervisor de Manutenção, onde fui responsável pelo planejamento e supervisão das manutenções dos equipamentos industriais e veículos da empresa, e como Estagiário de Produção, onde atuei na criação e controle de indicadores relacionados ao processo produtivo da empresa identificando pontos de otimização.',
              //   style: GoogleFonts.roboto(
              //     fontSize: 18,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.black,
              //   ),
              //   duration: Duration(seconds: 10),
              // ),
              Text(
                'Resumo profissional:\nFormado em Engenharia de Controle e Automação pela Universidade Federal de Lavras. Desenvolvedor Flutter Jr. com experiência no desenvolvimento de aplicativos móveis utilizando metodologias ágeis de desenvolvimento de software. Anteriormente, atuei como Gerente/Supervisor de Logística, onde fui responsável pela gestão de custos e acompanhamento de KPIs de transporte, bem como pela gestão de pessoal e pelo planejamento e controle das manutenções dos veículos da empresa. Também tenho experiência como Supervisor de Manutenção, onde fui responsável pelo planejamento e supervisão das manutenções dos equipamentos industriais e veículos da empresa, e como Estagiário de Produção, onde atuei na criação e controle de indicadores relacionados ao processo produtivo da empresa identificando pontos de otimização.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 40),
              Text(
                'Experiências profissionais:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: [
                    Card(
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/squad.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Squad Premium',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                                'Ramo: Consultoria de TI\nCargo: Desenvolvedor Flutter\nPeríodo: Fev 2023-Atualmente'),
                          ],
                        ),
                        trailing: Icon(Icons.arrow_drop_down),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        //childrenPadding: EdgeInsets.only(left: 16.0),
                        children: [
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Participação no desenvolvimento de um aplicativo móvel de cursos de programação para a ONG Yes, We Code. Colaboração em diferentes áreas do projeto, incluindo a implementação de novos recursos, melhoria da experiência do usuário e solução de problemas técnicos utilizando metodologias ágeis de desenvolvimento de software.'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/ms.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'MS Transportes e Comércio Ltda.',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                                'Ramo: Transporte e Comércio\nCargo: Gerente\nPeríodo: Abr 2021-Fev 2023'),
                          ],
                        ),
                        trailing: Icon(Icons.arrow_drop_down),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        //childrenPadding: EdgeInsets.only(left: 16.0),
                        children: [
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Responsável pela supervisão e logística dos fretes, bem como a gestão de custos e acompanhamento de KPIs de transportes. Também fui responsável pela Gestão de Pessoal e pelo planejamento e controle das manutenções dos veículos da empresa. '),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/sn.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Grupo SN',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                                'Ramo: Mineração\nCargo: Supervisor de manutenção\nPeríodo: Jan 2021-Abr 2021'),
                          ],
                        ),
                        trailing: Icon(Icons.arrow_drop_down),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        //childrenPadding: EdgeInsets.only(left: 16.0),
                        children: [
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Responsável pelo planejamento e supervisão das manutenções dos equipamentos de mineração e veículos da empresa. Gestão de KPis e custos relacionados à manutenção. Responsável pela reunião semanal junto ao time de manutenção. Avaliação do giro de estoques. Experiência em criação de requisições de compra, pedidos de compra, análise de cotações, e follow up com fornecedores. Participação no desenvolvimento de novos fornecedores.\nProjetos: Automação do Setor Quaternário de Britagem. Estruturação e cotação dos equipamentos necessários para o projeto cujo objetivo era o de otimizar o processo produtivo e de manutenção da planta.'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/sn.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Grupo SN',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                                'Ramo: Mineração\nCargo: Analista de manutenção\nPeríodo: Jul 2018-Jan 2021'),
                          ],
                        ),
                        trailing: Icon(Icons.arrow_drop_down),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        //childrenPadding: EdgeInsets.only(left: 16.0),
                        children: [
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Atuação em conjunto com o time de manutenção no processo administrativo das manutenções preditivas e preventivas. Atualização dos indicadores utilizados na manutenção. Gestão de jovens aprendizes determinando suas atividades e atuação dentro do PCM e Almoxarifado.'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/sn.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Grupo SN',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                                'Ramo: Mineração\nCargo: Estagiário de produção\nPeríodo: Mar 2018-Jul 2018'),
                          ],
                        ),
                        trailing: Icon(Icons.arrow_drop_down),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        //childrenPadding: EdgeInsets.only(left: 16.0),
                        children: [
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Responsável pela criação e controle de indicadores relacionados ao processo produtivo da empresa identificando pontos de otimização. Atuação junto ao time de produção e manutenção na melhoria contínua dos processos.'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Habilidades:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Wrap(
                spacing: 8,
                children: [
                  Chip(label: Text('Flutter')),
                  Chip(label: Text('Dart')),
                  Chip(label: Text('Java Script')),
                  Chip(label: Text('HTML')),
                  Chip(label: Text('CSS')),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  launchUrl(Uri.parse('https://www.linkedin.com/in/igor-santos-95118514a/'));
                },
                icon: Icon(Icons.link),
                label: Text('LinkedIn'),
                //textColor: Colors.white,
                //color: Colors.blue,
              ),
              SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  launchUrl(Uri.parse('https://github.com/igoranastacio89'));
                },
                icon: Icon(Icons.link),
                label: Text('GitHub'),
                //textColor: Colors.white,
                //color: Colors.black,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNarrowLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/igor_formal.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Igor Veríssimo Anastácio Santos',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Contato: igoranastacio89@gmail.com\nTelefone: (35) 99987-8904',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        Text(
          'Resumo profissional:\nFormado em Engenharia de Controle e Automação pela Universidade Federal de Lavras. Desenvolvedor Flutter Jr. com experiência no desenvolvimento de aplicativos móveis utilizando metodologias ágeis de desenvolvimento de software. Anteriormente, atuei como Gerente/Supervisor de Logística, onde fui responsável pela gestão de custos e acompanhamento de KPIs de transporte, bem como pela gestão de pessoal e pelo planejamento e controle das manutenções dos veículos da empresa. Também tenho experiência como Supervisor de Manutenção, onde fui responsável pelo planejamento e supervisão das manutenções dos equipamentos industriais e veículos da empresa, e como Estagiário de Produção, onde atuei na criação e controle de indicadores relacionados ao processo produtivo da empresa identificando pontos de otimização.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        Text(
          'Experiências profissionais:',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Expanded(
          child: ListView(
            children: [
              Card(
                child: ExpansionTile(
                  title: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/squad.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Squad Premium',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                          'Ramo: Consultoria de TI\nCargo: Desenvolvedor Flutter\nPeríodo: Fev 2023-Atualmente'),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  //childrenPadding: EdgeInsets.only(left: 16.0),
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Participação no desenvolvimento de um aplicativo móvel de cursos de programação para a ONG Yes, We Code. Colaboração em diferentes áreas do projeto, incluindo a implementação de novos recursos, melhoria da experiência do usuário e solução de problemas técnicos utilizando metodologias ágeis de desenvolvimento de software.'),
                    ),
                  ],
                ),
              ),
              Card(
                child: ExpansionTile(
                  title: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/ms.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'MS Transportes e Comércio Ltda.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                          'Ramo: Transporte e Comércio\nCargo: Gerente\nPeríodo: Abr 2021-Fev 2023'),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  //childrenPadding: EdgeInsets.only(left: 16.0),
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Responsável pela supervisão e logística dos fretes, bem como a gestão de custos e acompanhamento de KPIs de transportes. Também fui responsável pela Gestão de Pessoal e pelo planejamento e controle das manutenções dos veículos da empresa. '),
                    ),
                  ],
                ),
              ),
              Card(
                child: ExpansionTile(
                  title: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/sn.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Grupo SN',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                          'Ramo: Mineração\nCargo: Supervisor de manutenção\nPeríodo: Jan 2021-Abr 2021'),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  //childrenPadding: EdgeInsets.only(left: 16.0),
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Responsável pelo planejamento e supervisão das manutenções dos equipamentos de mineração e veículos da empresa. Gestão de KPis e custos relacionados à manutenção. Responsável pela reunião semanal junto ao time de manutenção. Avaliação do giro de estoques. Experiência em criação de requisições de compra, pedidos de compra, análise de cotações, e follow up com fornecedores. Participação no desenvolvimento de novos fornecedores.\nProjetos: Automação do Setor Quaternário de Britagem. Estruturação e cotação dos equipamentos necessários para o projeto cujo objetivo era o de otimizar o processo produtivo e de manutenção da planta.'),
                    ),
                  ],
                ),
              ),
              Card(
                child: ExpansionTile(
                  title: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/sn.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Grupo SN',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                          'Ramo: Mineração\nCargo: Analista de manutenção\nPeríodo: Jul 2018-Jan 2021'),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  //childrenPadding: EdgeInsets.only(left: 16.0),
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Atuação em conjunto com o time de manutenção no processo administrativo das manutenções preditivas e preventivas. Atualização dos indicadores utilizados na manutenção. Gestão de jovens aprendizes determinando suas atividades e atuação dentro do PCM e Almoxarifado.'),
                    ),
                  ],
                ),
              ),
              Card(
                child: ExpansionTile(
                  title: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/sn.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Grupo SN',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                          'Ramo: Mineração\nCargo: Estagiário de produção\nPeríodo: Mar 2018-Jul 2018'),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  //childrenPadding: EdgeInsets.only(left: 16.0),
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Responsável pela criação e controle de indicadores relacionados ao processo produtivo da empresa identificando pontos de otimização. Atuação junto ao time de produção e manutenção na melhoria contínua dos processos.'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Habilidades:',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Wrap(
          spacing: 8,
          children: [
            Chip(label: Text('Flutter')),
            Chip(label: Text('Dart')),
            Chip(label: Text('Java Script')),
            Chip(label: Text('HTML')),
            Chip(label: Text('CSS')),
          ],
        ),
        SizedBox(height: 16),
        ElevatedButton.icon(
          onPressed: () {
            launchUrl(Uri.parse('https://www.linkedin.com/in/igor-santos-95118514a/'));
          },
          icon: Icon(Icons.link),
          label: Text('LinkedIn'),
          //textColor: Colors.white,
          //color: Colors.blue,
        ),
        SizedBox(height: 16),
        ElevatedButton.icon(
          onPressed: () {
            launchUrl(Uri.parse('https://github.com/igoranastacio89'));
          },
          icon: Icon(Icons.link),
          label: Text('GitHub'),
          //textColor: Colors.white,
          //color: Colors.black,
        ),
      ],
    );
  }
}
