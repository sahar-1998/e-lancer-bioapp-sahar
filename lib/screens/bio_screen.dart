import 'package:elancer_bioapp_sahar/widgets/bio_widget.dart';
import 'package:flutter/material.dart';

class BioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'MY BIO',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topCenter,
              end: AlignmentDirectional.bottomCenter,
              colors: [
                Colors.purple.shade200,
                Colors.pinkAccent.shade100,
                Colors.yellowAccent.shade100
              ]),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              const CircleAvatar(
                radius: 50,
              ),
              const SizedBox(height: 10),
              const Text(
                'Sahar Essam',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'e-lancer training',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 0.2,
                indent: 20,
                endIndent: 0,
                height: 50,
              ),
              BioCard(
                leadingIcon: Icons.email,
                title: 'Email',
                subTitle: 'sahartalaa108@gmail.com',
                trailingIcon: Icons.send,
                marginButtom: 15,
              ),
              BioCard(
                leadingIcon: Icons.phone_android_outlined,
                title: 'Mobile',
                subTitle: '0592383626',
                trailingIcon: Icons.call,
                marginButtom: 15,
              ),
              BioCard(
                  leadingIcon: Icons.laptop_chromebook,
                  title: 'Course',
                  subTitle: 'Flutter Course',
                  trailingIcon: Icons.bookmark),
              Spacer(),
              Text(
                'FLUTTER COURSE',
                style: TextStyle(letterSpacing: 5, fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
