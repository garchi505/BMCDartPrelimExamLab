import 'dart:io';

void main() {
  print("=== Student Grade Tracker ===\n");

  // use try catch to numeric user inputs to ensure only valid numbers are accepted
  try {
    //input to get the student name
    print("Please Enter your name:");
    // Gets string input and asserts it's not null
    String? studName = stdin.readLineSync();

    //input to get the assignment score
    print("Enter assignment score (0-100.0):");
    // Converts the string to a double
    double assignmentWeight = double.parse(stdin.readLineSync()!);

    //input to get the midterm
    print("Enter midterm score (0-100.0):");
    // Converts the string to a double
    double midtermWeight = double.parse(stdin.readLineSync()!);

    //input to get the final exam
    print("Enter final exam score (0-100.0):");
    // Converts the string to a double
    double finalExamWeight = double.parse(stdin.readLineSync()!);

    // Calculate weighted average
    double finalGrade =
        (assignmentWeight * 0.2) +
        (midtermWeight * 0.3) +
        (finalExamWeight * 0.5) / 3;

    // to print the final output
    print("\n=== Results ===");
    print("\n");
    print("Student Name: $studName");
    // i use 'toStringAsFixed'to control decimal places to be only 1
    print("Assignment: ${assignmentWeight.toStringAsFixed(1)}");
    // i use 'toStringAsFixed'to control decimal places to be only 1
    print("Midterm: ${midtermWeight.toStringAsFixed(1)}");
    // i use 'toStringAsFixed'to control decimal places to be only 1
    print("Final Exam: ${finalExamWeight.toStringAsFixed(1)}");
    // i use 'toStringAsFixed'to control decimal places to be only 1
    print("Final Grade: ${finalGrade.toStringAsFixed(1)}");

    // i use this condtion to check if the grade is failed or passed. if the grade is below 60.0 it will print failed otherwise its passed.
    String passingGradeThreshold;
    if (finalGrade >= 60.0) {
      passingGradeThreshold = 'Passed!';
    } else {
      passingGradeThreshold = 'Failed!';
    }
    print("$passingGradeThreshold");
    print("\n");

    // using try catch it will end the program if the user input invalid character
  } catch (e) {
    print("invalid input, Please Try Again");
    exit(1);
  }
}
