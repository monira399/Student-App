
class Student {
  final String name;
  final int rollNumber;
  final String course;

  const Student({
    required this.name,
    required this.rollNumber,
    required this.course,
  });

  factory Student.fromMap(Map<String, dynamic> data) {
    return Student(
      name: data['name'] as String,
      rollNumber: (data['rollNumber'] as num).toInt(),
      course: data['course'] as String,
    );
  }
}
