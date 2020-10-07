import 'package:flutter/material.dart';
import 'dart:async';
import 'niveis.dart';
import 'areas/fisica.dart';
import 'areas/quimica.dart';
import 'areas/programacao.dart';
import 'areas/matematica.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

//AudioPlayer = AssetsAudioPlayer();

class categoria extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Container (
          height: 450,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),

          ),
          child: new Container (
            height: 400,
            width: 50,

            child: Column (


              children: <Widget>[

                const SizedBox(height: 50),
                const Text('ESCOLHE UMA CATEGORIA',style: TextStyle(
                    color:Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    height : 1.5,fontSize: 16)),
                const SizedBox(height: 50),

                Container(
                  width: 300,
                  height: 50,
                  child: ButtonTheme(
                    height: 30.0,

                    child: RaisedButton(
                      color: Colors.white,
                      textColor: Colors.lightBlueAccent,
                      onPressed: () {
                        new Timer(const Duration(milliseconds: 8), () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(20.0)), //this right here
                                  child: Container(
                                    height: 300,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Text('BOLO FOFO',style: TextStyle(color:Colors.lightBlueAccent,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Roboto', height : 1.5,fontSize: 30),
                                              textAlign: TextAlign.center,),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });


                        });
                        AssetsAudioPlayer.newPlayer().open(  // audioooo
                          Audio("assets/lamba.mp3"),
                          autoStart: true,
                          showNotification: true,
                        );

                        new Timer(const Duration(milliseconds: 1200), () {

                          Navigator.push(context, MaterialPageRoute(builder: (context) => fisica()),);
                        });
                      },
                      child: const Text('Física', style: TextStyle(fontSize: 16)),
                      padding: EdgeInsets.all(10.0),

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.lightBlueAccent, width: 4)
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                Container(
                  width: 300,
                  height: 50,
                  child: ButtonTheme(
                    height: 30.0,
                    child: RaisedButton(
                      color: Colors.white,
                      textColor: Colors.lightBlueAccent,
                      onPressed: () {
                        new Timer(const Duration(milliseconds: 8), () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(20.0)), //this right here
                                  child: Container(
                                    height: 300,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Text('BOLO FOFO',style: TextStyle(color:Colors.lightBlueAccent,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Roboto', height : 1.5,fontSize: 30),
                                              textAlign: TextAlign.center,),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });


                        });

                        AssetsAudioPlayer.newPlayer().open(  // audioooo
                          Audio("assets/lamba.mp3"),
                          autoStart: true,
                          showNotification: true,
                        );

                        new Timer(const Duration(milliseconds: 1200), () {

                          //AudioPlayer = AssetsAudioPlayer();

                         Navigator.push(context, MaterialPageRoute(builder: (context) => quimica()),);
                        });
                      },

                      child: const Text('Química', style: TextStyle(fontSize: 16)),
                      padding: EdgeInsets.all(10.0),

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.lightBlueAccent, width: 4)
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                Container(
                  width: 300,
                  height: 50,
                  child: ButtonTheme(

                    height: 35.0,
                    child: RaisedButton(
                      color: Colors.white,
                      textColor: Colors.lightBlueAccent,
                      onPressed: () {
                        new Timer(const Duration(milliseconds: 8), () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(20.0)), //this right here
                                  child: Container(
                                    height: 300,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Text('BOLO FOFO',style: TextStyle(color:Colors.lightBlueAccent,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Roboto', height : 1.5,fontSize: 30),
                                              textAlign: TextAlign.center,),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });


                        });

                        AssetsAudioPlayer.newPlayer().open(  // audioooo
                          Audio("assets/lamba.mp3"),
                          autoStart: true,
                          showNotification: true,
                        );

                        new Timer(const Duration(milliseconds: 1200), () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => matematica()),);
                        });
                      },
                      child: const Text('Matemática', style: TextStyle(fontSize: 16)),
                      padding: EdgeInsets.all(10.0),

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.lightBlueAccent, width: 4)
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 35),

                Container(
                  width: 300,
                  height: 50,
                  child: ButtonTheme(

                    height: 30.0,
                    child: RaisedButton(
                      color: Colors.white,
                      textColor: Colors.lightBlueAccent,
                      onPressed: () {
                        new Timer(const Duration(milliseconds: 8), () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(20.0)), //this right here
                                  child: Container(
                                    height: 300,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Text('BOLO FOFO',style: TextStyle(color:Colors.lightBlueAccent,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Roboto', height : 1.5,fontSize: 30),
                                              textAlign: TextAlign.center,),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });


                        });

                        AssetsAudioPlayer.newPlayer().open(  // audioooo
                          Audio("assets/lamba.mp3"),
                          autoStart: true,
                          showNotification: true,
                        );

                        new Timer(const Duration(milliseconds: 1200), () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => programcao()),);
                        });
                      },
                      child: const Text('Programação', style: TextStyle(fontSize: 16)),
                      padding: EdgeInsets.all(10.0),

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.lightBlueAccent, width: 4)
                      ),
                    ),
                  ),
                ),

              ],
            ),),
        ),

        // color: Colors.lightBlueAccent,
      ),
    );
  }
}