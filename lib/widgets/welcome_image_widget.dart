import 'package:flutter/material.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/widgets/my_wave_paint_widget.dart';

class WelcomeImageWidget extends StatelessWidget {
  const WelcomeImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyWavePaintWidget(),
      child: Container(
        height: 300 ,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(Assets.images.galaxy.path).image,
            fit: BoxFit.fitWidth,
          ),
        ),
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.icons.bulb.path , height: 150, width: 150,),
            Text("Quizzles" , style: TextStyle(
              color: Colors.lightGreenAccent  ,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ),

          ],
        ),
      ),
    ) ;

  }
}
