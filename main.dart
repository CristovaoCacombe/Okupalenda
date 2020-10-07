import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:palenda_new/areas/categorias_apre.dart';
import 'categorias.dart';
import 'infor.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:supercharged/supercharged.dart';
import 'package:sa_stateless_animation/sa_stateless_animation.dart';


void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:  pagiinaInicial(),
        );
  }
}

/// This is the stateless widget that the main application instantiates.
class pagiinaInicial extends StatelessWidget {

  pagiinaInicial({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: new Material(
        color: Colors.white,

        child: Container(

          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
           // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[

              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                width: MediaQuery.of(context).size.width,

                child: Column (
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[

                      const SizedBox(height: 30),
                      MirrorAnimation<double>(
                        tween: (-20.0).tweenTo(20.0), // <-- value for offset x-coordinate
                          duration: 2.seconds,
                            curve: Curves.easeInOutSine, // <-- non-linear animation
                              builder: (context, child, value) {
                          return Transform.translate(
                          offset: Offset(value, 0), // <-- use animated value for x-coordinate
                      child: child,
                      );},
                      child: Container(
                        child: Image.asset(
                          'lm.png',
                             height: 350,
                             width: 300,
                        ),
                      ),),

                      const SizedBox(height: 30),

                      RaisedButton(
                        color: Colors.white,
                        onPressed: () {

                          AssetsAudioPlayer.newPlayer().open(  // audioooo
                            Audio("assets/Orgulho.mp3"),
                            autoStart: true,
                            showNotification: true,
                          );

                          //MyAppState();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => categoria()),);
                        },
                        textColor: Colors.lightBlueAccent,
                        child: const Text('COMEÇA O JOGO', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold,)),

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.lightBlueAccent, width: 3)
                        ),
                      ),

                    ]

                ),

                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 8,
                  ),
                ),

              ),
              const SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                RaisedButton(
                  color: Colors.lightBlueAccent,
                  textColor: Colors.white,
                  onPressed:() => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => inf()),),
                  },

                  child: const Text('INFORMAÇÃO', style: TextStyle(fontSize: 18)),

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.white, width: 3)
                  ),
                ),

                  RaisedButton(
                    color: Colors.lightBlueAccent,
                    textColor: Colors.white,
                    onPressed:() => {
                      AssetsAudioPlayer.newPlayer().open(  // audioooo
                        Audio("assets/s.mp3"),
                        autoStart: true,
                        showNotification: true,
                      ),

                      Navigator.push(context, MaterialPageRoute(builder: (context) => categoria_apre()),),
                    },

                    child: const Text('SABIAS QUE!', style: TextStyle(fontFamily:' Kbzipadeedoodah-YG3j',fontSize: 18)),

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.white, width: 3)
                    ),
                  ),

                ],
              ),

              const SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 30,
                  width: 1000,
                  decoration: BoxDecoration(
                    color: Colors.white, ),
                  child: Image.asset(
                    'lo.png',
                    height: 30,
                    width: 100,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

