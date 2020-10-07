import 'package:flutter/material.dart';
import 'package:palenda_new/main.dart';
import 'package:link/link.dart';


class inf extends StatelessWidget {


@override
Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      title: Text('               INFORMAÇÃO',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <Widget>[
        new IconButton(
          icon: new Icon(Icons.close),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => pagiinaInicial()),),
        ),
      ],
      leading: new Container(),
      backgroundColor: Colors.lightBlueAccent,
    ),

  body: new Material(

      color: Colors.lightBlueAccent,
      child: Center(
        child: Container (
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(12),

          ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
                child: Stack(
                   children: <Widget>[
                     Container(
                       width: MediaQuery.of(context).size.width,
                       height: MediaQuery.of(context).size.height/3,

                       decoration: BoxDecoration(
                         //color: Colors.white,
                         borderRadius: BorderRadius.circular(12),

                       ),
                     ),

                     Padding(
                     padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                             child: Material(
                               borderRadius: BorderRadius.only (
                                 topLeft:  Radius.circular(20.0),
                                 topRight: Radius.circular(20.0),
                               ),

                               child: Column(

                                 children: <Widget>[

                                  Padding(
                                    padding: EdgeInsets.all(20.0),
                                      child: Text(
                                   '\n''Okupalenda\n \nÉ um jogo que possiu três fases, cada fase vai possuir um determinado'
                                   ' número de questões e vai ter a possiblidade de escolher um tema,'
                                   ' onde terá as questões.''\n'
                                   '\nPara cada questões vai te 3 alinhas de opções de respostas'
                                   'onde apenas uma delas é a resposta certa.\n'
                                   '\n''Primeiro nível Bolo - fofo (facil)\n'
                                   '\n''Segundo nível das tropas (intermedio)\n'
                                   '\n''Terceiro nivel pai grande (avançado)\n'
                                   '\n''As questões sao das areas de Física, matemática, química, programação e mecânica.\n'
                                   '\nDireitos autorias do jogo para arotec_su.',

                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 18.0,
                                     ),
                                       // textAlign: TextAlign.justify,
                                   ),
                                  ),

                                   Row (
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       children: [
                                   Padding(
                                     padding: EdgeInsets.all(20.0),
                                      child: Link(
                                        child: Image.asset(
                                          'domain.png',
                                          height: 80,
                                          width: 80,
                                        ),
                                          url:'https://www.arotech.org/',
                                            ),
                                   ),

                                   Padding(
                                     padding: EdgeInsets.all(20.0),
                                     child: Link(
                                       child: Image.asset(
                                       'novo.png',
                                       height: 80,
                                       width: 80,
                                     ),
                                       url: 'https://www.facebook.com/First-Global-Team-Angola-633667910304052',
                                     ),
                                   ),
                                   ],),

                                   const SizedBox(height: 30),

                                 ],
                               ),
                             ),
                        ),
                     )
                   ],
            ),
          ),
        // color: Colors.lightBlueAccent,
        ),
      ),
    ),);
  }
}