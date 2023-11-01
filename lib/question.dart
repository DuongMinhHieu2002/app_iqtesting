import 'dart:ui';

import 'package:flutter/material.dart';

class Question {
  String? question;
  String? image;
  Map<String, bool>? answers;

  Question(this.question, this.image, this.answers);
}
