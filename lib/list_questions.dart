import 'package:flutter/material.dart';

import './question.dart';

List<Question> questions = [
  Question(
    "What is half of a quarter of 8000?",
    "assets/q1.png",
    {
      "500": false,
      "1000": true,
      "2000": false,
      "800": false,
    },
  ),
  Question(
    "Which picture is different from the rest?",
    "assets/q2.png",
    {
      "1": false,
      "2": true,
      "3": false,
      "4": false,
    },
  ),
  Question(
    "Of the four countries Canada, Russia, Mexico and the United States, which country is this map of?",
    "assets/q3.png",
    {
      "Canada": false,
      "Russia": true,
      "Mexico": false,
      "United States": false,
    },
  ),
  Question(
    "Fill in the numbers in the following sequence:",
    "assets/q4.png",
    {
      "22": true,
      "23": false,
      "24": false,
      "25": false,
    },
  ),
  Question(
    "Finger is to hand as leaf to ?",
    "assets/q5.png",
    {
      "A": true,
      "B": false,
      "C": false,
      "D": false,
    },
  ),
  Question(
    "What number position is the car in?",
    "assets/q6.png",
    {
      "85": false,
      "86": false,
      "87": true,
      "88": false,
    },
  ),
  Question(
    "What is 20% of 30 USD?",
    "assets/q7.png",
    {
      "A": false,
      "B": true,
      "C": false,
      "D": false,
    },
  ),
  Question(
    "In numbers from 1 to 100, how many times does the number 5 appear?",
    "assets/q8.png",
    {
      "A": false,
      "B": false,
      "C": true,
      "D": false,
    },
  ),
  Question(
    "What day was yesterday if monday is in two days?",
    "assets/q9.png",
    {
      "A": false,
      "B": false,
      "C": true,
      "D": false,
    },
  ),
  Question(
    "HCAEP = 46251. PEACH = ?",
    "assets/q10.png",
    {
      "A": false,
      "B": false,
      "C": false,
      "D": true,
    },
  ),
];
