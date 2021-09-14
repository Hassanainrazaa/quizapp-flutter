import 'package:flutter/material.dart';

import 'questions.dart';

class QuizBrain {


  int _QuestionNumber = 0;

  List<Question> _QuestionBank = [
    Question(q: '1. A RIVER is bigger than a STREAM.',a: true),
    Question(q: '2. There are one thousand years in a CENTURY',a: false),
    Question(q: '3. FOUNDED is the past tense of FOUND. ',a: true),
    Question(q: '4. ANSWER can be used as a noun and a verb.',a: true),
    Question(q: '5. SCARLET is a brilliant red colour.',a: true),
    Question(q: '6. USED TO DOING and USED TO DO mean the same thing.',a: false),
    Question(
        q: '7. You can use IMPROVE as a noun and as a verb.',a:false),
    Question(
        q: '8. DOZEN is equivalent to 20.', a:false),
    Question(
        q: '9. The past tense of FIND is FOUND.', a:true),
    Question(
        q: '10. EQUIVALENT TO is (more or less) the same as EQUAL TO.', a:true),

  ];

  void NextQuestion()
  {
    if (_QuestionNumber < _QuestionBank.length - 1)
    {
          _QuestionNumber++;
    }
    print(_QuestionNumber);
    print(_QuestionBank.length);
  }

  String GetQuestionNumber()
  {
    return _QuestionBank[_QuestionNumber].QuestionsText;
  }

  bool GetAnswerNumber()
  {
    return _QuestionBank[_QuestionNumber].Answers;
  }
  bool IsFinished()
  {
    if (_QuestionNumber >= _QuestionBank.length - 1)
      {
        print("Returning true");
        return true;
      }
    else
      {
      return false;
      }
  }
  void reset()
  {
    _QuestionNumber = 0;
  }

}