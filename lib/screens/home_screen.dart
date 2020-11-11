import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:music_player/colors.dart';
import 'package:music_player/widgets/round_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
              bgColor, Color(0xff15171A)
            ])
          ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        //backgroundColor: Color(0xff03B3D40),
        body: SafeArea(
          child: Container(
            
            //padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Playlists',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 5),
                                Text('16 created playlists',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: subTextcolor
                                    ))
                              ],
                            ),
                            RoundNeumorphBtn(
                                icon: Icon(
                              Icons.add,
                              color: Colors.grey,
                              size: 40,
                            ))
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(height: 5, color: Color(0xFF050607)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                          color: Colors.grey[800],
                          width : 2
                        ))
                          
                        ),
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          // border: NeumorphicBorder(width: 1, color: Colors.black54),
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(8)),
                          depth: 8,
                          lightSource: LightSource.topLeft,
                          color: Color(0xff262A2F),
                          //shadowLightColor: Color(0xff262A2F),
                          surfaceIntensity: 0.5),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RoundNeumorphBtn(
                                icon: Icon(
                              Icons.favorite,
                              color: Color(0xff9c0B01),
                            )),
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text('Favourites',
                                        style: TextStyle(
                                            color: titleTextcolor, fontSize: 20)),
                                    Text('Alo Ranking',
                                        style: TextStyle(
                                            color: subTextcolor, fontSize: 16))
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('356',
                                        style: TextStyle(
                                            color: titleTextcolor, fontSize: 18)),
                                    Text('Songs',
                                        style: TextStyle(
                                            color: subTextcolor, fontSize: 16))
                                  ],
                                )
                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
               
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 20),
                        Text('Recommended',
                            style: TextStyle(color: Colors.white, fontSize: 20)),
                        SizedBox(height: 20),
                        Container(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                //padding: EdgeInsets.all(12),
                                width: screenWidth * 0.6,
                                child: Neumorphic(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  style: NeumorphicStyle(
                                    shape: NeumorphicShape.concave,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(8)),
                                    depth: 8,
                                    lightSource: LightSource.topLeft,
                                    color: Color(0xff262A2F),
                                    shadowLightColor: Color(0xff262A2F),
                                    //surfaceIntensity: 0.5
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      RoundNeumorphBtn(
                                          icon: Icon(
                                        Icons.favorite,
                                        color: Color(0xff9c0B01),
                                      )),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Top 50',
                                                style: TextStyle(
                                                    color: titleTextcolor,
                                                    fontSize: 20)),
                                                     Text('Ariel Two ',
                                          style: TextStyle(
                                              color: subTextcolor, fontSize: 16))
                                          ],
                                        ),
                                      ),
                                     
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          height: 7,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Stack(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xffD3420B),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                           color: Color(0xff141618),                    
                        border: Border(top: BorderSide(
                          color: Colors.grey[700],
                          width : 1
                        )),
                        
                          
                        ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Grace',
                                  style: TextStyle(
                                      color: titleTextcolor, fontSize: 20)),
                              Text('MIL - Wizkid',
                                  style: TextStyle(
                                      color: subTextcolor, fontSize: 16))
                            ],
                          ),
                          Container(
                              child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.fast_rewind),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(Icons.play_arrow),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(Icons.fast_forward),
                                onPressed: () {},
                              )
                            ],
                          ))
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
