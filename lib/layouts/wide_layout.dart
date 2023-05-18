import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/animated_container_translation.dart';

class BuildWideLayout extends StatelessWidget {
  const BuildWideLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedContainerTranslation(
                    duration: 1000,
                    child: Container(
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
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Igor Veríssimo Anastácio Santos, 28 anos',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Desenvolvedor Flutter / Squad Premium\nE-mail: igoranastacio89@gmail.com\nTelefone: (35) 99987-8904',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
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
                    textAlign: TextAlign.justify,
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
                                      image:
                                      AssetImage('assets/images/squad.png'),
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
                            expandedCrossAxisAlignment:
                            CrossAxisAlignment.start,
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
                            expandedCrossAxisAlignment:
                            CrossAxisAlignment.start,
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
                            expandedCrossAxisAlignment:
                            CrossAxisAlignment.start,
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
                            expandedCrossAxisAlignment:
                            CrossAxisAlignment.start,
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
                            expandedCrossAxisAlignment:
                            CrossAxisAlignment.start,
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
                      Chip(label: Text('WordPress')),
                      Chip(label: Text('Pacote Office')),
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
                      launchUrl(Uri.parse(
                          'https://www.instagram.com/igoranastacio/'));
                    },
                    icon: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset('assets/images/insta.webp')),
                    label: Text('Instagram'),
                    //textColor: Colors.white,
                    //color: Colors.blue,
                  ),
                  SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      launchUrl(Uri.parse(
                          'https://www.linkedin.com/in/igor-santos-95118514a/'));
                    },
                    icon: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset('assets/images/linkedin3.png')),
                    label: Text('LinkedIn'),
                    //textColor: Colors.white,
                    //color: Colors.blue,
                  ),
                  SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      launchUrl(
                          Uri.parse('https://github.com/igoranastacio89'));
                    },
                    icon: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset('assets/images/github3.png')),
                    label: Text('GitHub'),
                    //textColor: Colors.white,
                    //color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

