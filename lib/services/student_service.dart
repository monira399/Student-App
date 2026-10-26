
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/student.dart';

class StudentService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Student>> fetchStudents() async {
    final snapshot = await _firestore
        .collection('students')
        .get();

    return snapshot.docs.map((doc) {
      return Student.fromMap(doc.data());
    }).toList();
  }
}
