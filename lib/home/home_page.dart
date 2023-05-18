import 'package:flutter/material.dart';
import 'package:page_igor/layouts/narrow_layout.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:page_igor/layouts/wide_layout.dart';

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (MediaQuery.of(context).size.width > 600)
          ? const EdgeInsets.only(top: 18.0, right: 18, left: 50, bottom: 50)
          : const EdgeInsets.all(18.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Meu Perfil',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Container(
              height: (MediaQuery.of(context).size.width > 600)
                  ? MediaQuery.of(context).size.height + 500
                  : MediaQuery.of(context).size.height + 1500,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 600) {
                    return BuildWideLayout();
                  } else {
                    return BuildNarrowLayout();
                  }
                },
              ),
            ),
          ),
        ),
        floatingActionButton: SizedBox(
          height: 90,
          width: 90,
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: Colors.transparent,
            onPressed: () {
              launchUrl(Uri.parse('https://wa.me/5535999878904'));
            },
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/whatsapp.webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
