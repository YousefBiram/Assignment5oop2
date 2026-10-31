class Person {
  String name;
  String address;

  Person(this.name, this.address);

  @override
  String toString() => "$name($address)";
}

class Student extends Person {
  int numCourses = 0;
  List<String> courses = [];
  List<int> grades = [];

  Student(String name, String address) : super(name, address);

  @override
  String toString() => "Student: ${super.toString()}";

  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }

  void printGrades() {
    String result = toString();
    for (int i = 0; i < numCourses; i++) {
      result += " ${courses[i]}:${grades[i]}";
    }
    print(result);
  }

  double getAverageGrades() {
    if (numCourses == 0) return 0;
    int sum = 0;
    for (int g in grades) {
      sum += g;
    }
    return sum / numCourses;
  }
}

class Teacher extends Person {
  int numCourses = 0;
  List<String> courses = [];

  Teacher(String name, String address) : super(name, address);

  @override
  String toString() => "Teacher: ${super.toString()}";

  bool addCourse(String course) {
    if (courses.contains(course)) {
      return false;
    }
    courses.add(course);
    numCourses++;
    return true;
  }

  bool removeCourse(String course) {
    if (!courses.contains(course)) {
      return false;
    }
    courses.remove(course);
    numCourses--;
    return true;
  }
}



void main() {
 
}