
import 'package:flutter/material.dart';
import '../models/student.dart';
import '../services/student_service.dart';

class StudentProvider extends ChangeNotifier {
  final StudentService _service = StudentService();

  List<Student> students = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> fetchStudents() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      students = await _service.fetchStudents();
    } catch (e) {
      errorMessage = 'Failed to load students.';
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
