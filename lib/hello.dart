import 'dart:io';
//import 'dart:math';

import 'game.dart';

int a = 0;   //top-level varable(ไม่ได้อยู่ในคลาส)

//top-level function
void main() {
  //เกมสุ่มเลข
  var game = Game();

  int result = 0;
  //var r = Random();
  //var answer = r.nextInt(100) + 1;
  // UX = User Experience
  //print('คำตอบคือ $answer');

  //var isCorrect = false;
  do {
    stdout.write('Please guess the number between 1 and 100 : '); //ให้cursorมารอบรรทัดเดียวกัน
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!)!;

    if (guess == null){
      print('Please enter number only');
      continue;
    }

    /*if (guess > answer) {
      print('$guess is too high');
      //print('Too high');
    } else if (guess < answer) {
      print('$guess is too low');
      //print('Too low');
    } else {
      print('$guess is correct');
      //print('Correct');
      isCorrect = true;
    }*/
    result = game.doGuess(guess);
  } while (result != 1);   //or !isCorrect
}

    //print('input มีค่า $input');
    /*if(input == null) {
    print('input is null');
  } else{
    print('input isnt null');
  }*/
    //int.tryParse(input!);

 /* var i = 123;  //type inference
  int j = ++i;  //++i != i++
  int k;
  k = 456;
  var f = 1.234;   //วางcursorหลังตัวแปร กดCtrl+q จะบอกตัวแปรtype(บอกการใช้งาน)
  print('ค่าของ i คือ ' + i.toString());
  print('ค่าของ j คือ ' + j.toString());
  print('ค่าของ i คือ $i');
  print('ค่าของ i คือ ${i + 10}');   //string interpolation
  print('ค่าของ j คือ ${i * 10}');   //Ctrl + d copy line

  var r = Random();
  var value = r.nextInt(1000);
  print('ค่าที่สุ่มได้คือ $value');  //ctrl+ship+enter ปิด;

  dynamic foo = 123;
  foo = 'hello';

  dynamic bar;
  bar = 123;
  bar = 'hello';

  Object baz;
  baz = 123;
  baz = 'hello';

  dynamic x = 0;  //dynamic = ready to change data type (if var = error)
  x = 456;
  x = 1.23;
  x = true;
  x = Random();*/

  //int i = null; -> error กำหนดค่าnullในตัวแปรintไม่ได้ต้องเป็น int?

  //int? i; -1
  //i = null; -2ได้

  //String s = 'hello';
  //s = ''; (empty string != null)
  //s = null -> error ต้องเป็น String?

  //int? i;
  //i =myFunc();
  //int age;
  //age = i;
  //int? myFunc(){
    //return 0;
  //}

//}