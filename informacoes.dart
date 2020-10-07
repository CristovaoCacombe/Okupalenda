import 'package:flutter/material.dart';
import 'main.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class informacao extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.close),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => pagiinaInicial()),),
            ),
          ],
          leading: new Container(),
          backgroundColor: Colors.lightBlueAccent,
        ),

    body: new Expanded(
      child: new Material(
        color: Colors.lightBlueAccent,

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 50),
            Container(
              height: 500,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                  width: 8,
                ),
                borderRadius: BorderRadius.only (
                  topLeft:  Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),


                /*   image: new DecorationImage(
                    image: new AssetImage('/Users/arotec/Documents/Logo.jpg'),
                    fit: BoxFit.cover,
                  ),*/
              ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),

              child: const Text('\n''Okupalenda possiu três fases, cada fase vai possuir um determinado'
                  'número de questões e vai ter a possiblidade de escolher um tema,'
                  'onde terá as questões.''\n'
                  'Para cada questões vai te 3 alinhas de opções de respostas'
                  'onde apenas uma delas é a resposta certa.'
                  '\n''\n''Primeiro nível Bolo - fofo (facil)'
                  '\n''Segundo nível das tropas (intermedio)'
                  '\n''Terceiro nivel pai grande (avançado)'
                  '\n''As questões sao das areas de Física, matemática, química, programação e mecânica.'
                  '\n \n ' 'Direitos autorias do jogo para arotec_su.',
                  style: TextStyle(color: Colors.lightBlue, height : 2.0, fontSize: 14,)),
            ),),

            const SizedBox(height: 40),
            RaisedButton(
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              onPressed: () {

                AssetsAudioPlayer.newPlayer().open(  // audioooo
                  Audio("s.mp3"),
                  autoStart: true,
                  showNotification: true,
                );
                Navigator.push(context, MaterialPageRoute(builder: (context) => pagiinaInicial()),);},
              child: const Text('VOLTAR', style: TextStyle(fontSize: 16)),
              padding: EdgeInsets.all(10.0),

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.white, width: 4)
              ),
            ),
          ],
        ),
      ),);
  }
}