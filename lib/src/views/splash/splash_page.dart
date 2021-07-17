import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/constants/text_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(gradient: AppColors.blueGradient),
          child: Stack(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                      top: (MediaQuery.of(context).size.height / 2) - 100,
                      child: Hero(
                        child: Image.asset('assets/images/notes_logo.png'),
                        tag: 'notes_logo',
                      )),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Hero(
                          tag: "journal",
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              "journal",
                              style: TextStyles.white72w700Montserrat,
                            ),
                          ),
                        ),
                        Text(
                          "YOUR ACADEMY'S BEST FRIEND",
                          style: TextStyles.white13w300Montserrat,
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "powered by",
                      style: TextStyles.white12w200Roboto,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Image.asset("assets/images/raro_academy_logo.png"),
                    SizedBox(height: 40.0)
                  ],
                ),
              )
            ],
          )),
    );
  }
}
