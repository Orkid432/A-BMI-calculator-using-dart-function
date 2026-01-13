// Part A: Function to calculate BMI
double calculateBMI(double weight, double height) {
  double bmi = weight / (height * height);
  return bmi;
}

// Part B: Function to determine BMI category
String getBMICategory(double bmi) {
  if (bmi < 18) {
    return "Underweight";
  } else if (bmi >= 18 && bmi <= 24) {
    return "Normal";
  } else if (bmi >= 25 && bmi <= 29) {
    return "Overweight";
  } else {
    return "Obese";
  }
}

// Part C: Main function
void main() {
  // Taking input from user
  print("Enter your weight in kg:");
  String? weightInput = stdin.readLineSync();
  double weight = double.parse(weightInput!);

  print("Enter your height in meters:");
  String? heightInput = stdin.readLineSync();
  double height = double.parse(heightInput!);

  // Calculate BMI
  double bmi = calculateBMI(weight, height);
  String category = getBMICategory(bmi);

  // Output
  print("Your BMI is: ${bmi.toStringAsFixed(2)}");
  print("Category: $category");
}
