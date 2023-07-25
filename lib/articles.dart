import 'package:flutter/material.dart';

class Articles extends StatefulWidget {
  @override
  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Women Safety Laws",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.1,
            right: size.width * 0.1,
            top: 50,
          ),
          child: Column(
            children: [
              Text(
                "=> The Ministry of Women and Child Development has been administering various special laws relating to women such as the Protection of Women from Domestic Violence Act, 2005; \n => Dowry Prohibition Act, 1961; \n=> Indecent Representation of Women (Prohibition) Act, 1986; \n=> the Sexual Harassment of Women at Workplace (Prevention, Prohibition and Redressal) Act, 2013 and the Prohibition of Child Marriage Act, 2006. \n=> The said Ministry is also administering the Juvenile Justice (care and protection of children) Act, 2015, \n ==>the Commissions for Protection of Child Rights Act, 2005 and the Protection of Children from Sexual Offences Act, 2012 \n =>The Criminal Law (Amendments), Act 2013 was enacted for effective legal deterrence against sexual offences",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28),
              )
            ],
          ),
        ));
  }
}
