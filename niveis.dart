import 'package:flutter/material.dart';


class perguntas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: novo(),

    );
  }
}


class novo extends StatefulWidget {
  @override
  _novo createState() => _novo();
}

class _novo extends State<novo> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'Which\'s capital of India?',
      'answers': [
        {'text': 'Mumbai', 'score': 0},
        {'text': 'New Delhi', 'score': 10},
        {'text': 'Pune', 'score': 0}
      ]
    },
    {
      'questionText': 'Which\'s mother toung of India?',
      'answers': [
        {'text': 'Marathi', 'score': 0},
        {'text': 'Gujarati', 'score': 0},
        {'text': 'Hindi', 'score':10}
      ]
    }, {
      'questionText': 'Who\'s prime ministor of India?',
      'answers': [
        {'text': 'Narendra Modi', 'score': 10},
        {'text': 'Amit Shah', 'score': 0},
        {'text': 'Rahul Gandhi', 'score': 0}
      ]
    },{
      'questionText': 'Who\'s president of India?',
      'answers': [
        {'text': 'Lalkrishna Advani', 'score': 0},
        {'text': 'Ramnath Kovind', 'score': 10},
        {'text': 'Pratibha Patil', 'score': 0}
      ]
    },{
      'questionText': 'Who\'s Chief Minister of Gujarat?',
      'answers': [
        {'text': 'Nitin Patel', 'score': 0},
        {'text': 'Vijay Rupani', 'score': 10},
        {'text': 'Paresh Dhanani', 'score': 0}
      ]
    },
    {
      'questionText': 'Which of the following was the author of the Arthashastra?',
      'answers': [
        {'text': 'Kalhan', 'score': 0},
        {'text': 'Visakhadatta', 'score': 0},
        {'text': 'Chanakya', 'score': 10}
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('_questionIndex:$_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        body: _questionIndex < _questions.length
            ? Quiz(
            questions: _questions,
            answerQuestions: _answerQuestions,
            questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}


class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.all(5),
      child: RaisedButton(color:Colors.lightBlueAccent,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed:selectHandler,),);
  }
}


class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        border: Border.all(
          color: Colors.lightBlueAccent,
          width: 12,
        ),
        borderRadius: BorderRadius.circular(12),

      ),

      margin:EdgeInsets.all(10),

      child: Center(
        child: Text(questionText, style: TextStyle(
          fontSize: 25,
          color:Colors.white,
        ),
          textAlign: TextAlign.center,),),

    );
  }
}


class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;

  Quiz(
      {@required this.questions,
        @required this.answerQuestions,
        @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answers) {
          return Answer(()=>answerQuestions(answers['score']), answers['text']);
        }).toList()
      ],
    );
  }
}


class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandlar;

  Result(this.resultScore,this.resetHandlar);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 20) {
      resultText = 'Ainda Es BOLO FOFO \n Resultado:$resultScore';
    } else if (resultScore <= 30) {
      resultText = 'DAS TROPAS \n Resultado:$resultScore';
    } else if (resultScore <= 40) {
      resultText = 'PAI GRANDE \n Resultado:$resultScore';
    } else {
      resultText = 'BOLO FOFO \n Resultado:$resultScore';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container (
        width: MediaQuery.of(context).size.width - 30,
        height: MediaQuery.of(context).size.height/2,
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          border: Border.all(
            color: Colors.white,
            width: 8,
          ),
          borderRadius: BorderRadius.circular(20),

        ),

        margin:EdgeInsets.all(10),


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(color:Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(child: Text('Repete o nivel !',
            ),textColor:Colors.white,onPressed: resetHandlar,)
          ],
        ),),
    );
  }
}
