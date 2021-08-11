import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(image: DecorationImage(
        fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"))),

      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
          ],
        ),
      ),
    );
  }
}

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/Logo.png"),
        Spacer(),
        GlassContent(size: size),
        Spacer(flex: 3,),
      ],
    );
  }
}

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX:10,sigmaY:10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding*2),
          width: double.infinity,
          constraints: BoxConstraints(maxWidth: 1110,maxHeight: size.height*0.7),
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello There!",style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),),
              Text("Robbie \nRutherford",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 1.5),),

              Text("Creative Design Director",style:Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
