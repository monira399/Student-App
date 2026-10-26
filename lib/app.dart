import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_app/providers/student_provider.dart';
import 'package:student_app/screens/student_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(_) => StudentProvider(),
      child: MaterialApp(
        home: StudentScreen(),
      ),
    );
  }
}
