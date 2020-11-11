import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../colors.dart';

class RoundNeumorphBtn extends StatelessWidget {
   final Icon icon;

  const RoundNeumorphBtn({Key key, this.icon}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: Neumorphic(
          padding: EdgeInsets.all(5),
          drawSurfaceAboveChild: false,
          style: NeumorphicStyle(
              border: NeumorphicBorder(width: 5, color: bgColor),
              shape: NeumorphicShape.concave,
              boxShape: NeumorphicBoxShape.stadium(),
              depth: 10,
              intensity: 0.3,

              //oppositeShadowLightSource: true,

              //shadowDarkColor: blackColor,
              color: bgColor),
          child:Stack(
            children: [
              Center(
                child: Container(
                        width: 45,
                        height: 45,
                        child: Neumorphic(
                            // padding: EdgeInsets.all(2),

                            style: NeumorphicStyle(
                                shape: NeumorphicShape.convex,
                                boxShape: NeumorphicBoxShape.stadium(),
                                depth: 12,
                                intensity: 0.3,
                               // oppositeShadowLightSource: true,
                                //shadowDarkColor: blackColor,
                                color: bgColor),
                            child: icon),
                      ),
              ),
            ],
          ),
      ));
  }
}
