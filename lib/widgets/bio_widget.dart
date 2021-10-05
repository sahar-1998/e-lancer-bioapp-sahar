import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  final IconData leadingIcon;
  final IconData trailingIcon;
  final String title;
  final String subTitle;
  final double marginButtom;

  BioCard({
    required this.leadingIcon,
    required this.trailingIcon,
    required this.title,
    required this.subTitle,
    this.marginButtom = 0

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14)),
      margin: EdgeInsets.only(bottom: marginButtom),
      child:  ListTile(
        leading: Icon(leadingIcon),
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontFamily: 'GemunuLibre', letterSpacing: 2),
        ),
        subtitle: Text(subTitle, style: TextStyle(fontFamily: 'GemunuLibre'),),
        trailing: Icon(trailingIcon),
      ),
    );
  }
}