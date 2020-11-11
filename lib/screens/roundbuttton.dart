import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:music_player/widgets/round_button.dart';

import '../colors.dart';

class Roundbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
        //color: Colors.white54,
        shape: BoxShape.circle,
        border: Border.all(
          width: 5,
          color: bgColor,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(7, 7),
            color: Colors.black,
            blurRadius: 15,
            spreadRadius: 1,
          ),
          BoxShadow(
            offset: Offset(-7, -7),
            color: Colors.white24,
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey[800],
              
              Colors.grey[700],
            ],
            /* stops: [
              0.1,
              0.3,
              0.8,
              0.9
            ] */)

        /* image: DecorationImage(
            
                  image: ExactAssetImage(songInfo), fit: BoxFit.cover )
             */
        );

    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            child: Neumorphic(
                padding: EdgeInsets.all(2),
                drawSurfaceAboveChild: false,
                style: NeumorphicStyle(
                    border: NeumorphicBorder(width: 5, color: bgColor),
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.stadium(),
                    depth: 8,
                    intensity: 0.3,

                    //oppositeShadowLightSource: true,

                    shadowDarkColor: blackColor,
                    color: bgColor),
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Neumorphic(
                            // padding: EdgeInsets.all(2),

                            style: NeumorphicStyle(
                                shape: NeumorphicShape.convex,
                                boxShape: NeumorphicBoxShape.stadium(),
                                depth: 12,
                                intensity: 0.3,
                                oppositeShadowLightSource: true,
                                shadowDarkColor: blackColor,
                                color: bgColor),
                            child: Icon(
                              Icons.add,
                              color: Colors.grey,
                              size: 50,
                            )),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(height: 20),
          Container(
            //padding: EdgeInsets.all(7),
            height: 150,
            width: 150,
            decoration: boxDecoration.copyWith(
              //color: Colors.black,
              gradient: RadialGradient(
                colors: [
                  
                  bgColor,
                  Colors.white,
                ],
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 145,
                      width: 145,
                      decoration: boxDecoration.copyWith(
                        border: Border.all(width: 0),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(4,4),
                            color: Colors.grey[700],
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            offset: Offset(-4, -4),
                            color: Colors.grey[900],
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.grey,
                        size: 50,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          RoundNeumorphBtn(icon: Icon(
                              Icons.add,
                              color: Colors.grey,
                              size: 50,
                            ))
        ],
      )),
    );
  }
}

