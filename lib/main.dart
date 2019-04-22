import 'package:flutter/material.dart';

import './pages/landing_page.dart';
import './pages/quiz_page.dart';
import './pages/score_page.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Flutter Tutorial',
    home: new LandingPage(),
  ));
}

