import 'package:flutter/material.dart';
import 'package:quizzdemo/list_questions.dart';
import 'package:quizzdemo/result_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Color mainColor = Color(0xFF252c4a);
  Color seconColor = Colors.blue;
  PageController? _controller = PageController(initialPage: 0);
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isFalse = Colors.red;
  Color btnColor = Colors.blue;
  int Score = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: mainColor,
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            itemCount: questions.length,
            onPageChanged: (page) {
              setState(() {
                isPressed = false;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Question ${index + 1}/${questions.length}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 8.0,
                    thickness: 1.0,
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 400,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      questions[index].image!,
                      width: 400,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    questions[index].question!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  for (int i = 0; i < questions[index].answers!.length; i++)
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 5),
                      child: MaterialButton(
                        shape: StadiumBorder(),
                        color: isPressed
                            ? questions[index]
                                    .answers!
                                    .entries
                                    .toList()[i]
                                    .value
                                ? isTrue
                                : isFalse
                            : seconColor,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        onPressed: isPressed
                            ? () {}
                            : () {
                                setState(() {
                                  isPressed = true;
                                });
                                if (questions[index]
                                    .answers!
                                    .entries
                                    .toList()[i]
                                    .value) {
                                  Score += 10;
                                  print(Score);
                                }
                              },
                        child: Text(
                          questions[index].answers!.keys.toList()[i],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  OutlinedButton(
                      style: ButtonStyle(),
                      onPressed: isPressed
                          ? index + 1 == questions.length
                              ? () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Result_Screen(Score)));
                                }
                              : () {
                                  _controller!.nextPage(
                                      duration: Duration(microseconds: 500),
                                      curve: Curves.linear);
                                }
                          : null,
                      child: Text(
                        index + 1 == questions.length
                            ? "See result"
                            : "Next question",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              );
            },
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
