import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

 final Function selecthandler;

  Answer(this.selecthandler);

  @override
  Widget build(BuildContext context) {
    return Container( 
      width: double.infinity,
      color: Color.fromARGB(255, 44, 50, 143),
      child: RaisedButton(
        child: Text('Answer 1 '),
        onPressed: selecthandler(Answer),
      ),
    );
  }
}
