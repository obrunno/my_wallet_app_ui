import 'package:flutter/material.dart';
import 'package:my_wallet_app_ui/config/colors.dart';
import 'package:my_wallet_app_ui/config/size.dart';

class BankCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: width / 20, vertical: height / 20),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
                alignment: Alignment.topLeft,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT3YO1yPlwp6X3Syv-Qwz4gwAELM-4vRgT4dg&usqp=CAU",
                    fit: BoxFit.fill,
                  ),
                )),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: height / 18,
                width: width / 1.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Pimentão Vermelho",
                          style: TextStyle(
                              fontSize: fontSize(15),
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Text(
                      "Talhão: Rio Claro 014".toUpperCase(),
                      style: TextStyle(
                          fontSize: fontSize(14), fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text(
                '2.4 hA',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: fontSize(30),
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
