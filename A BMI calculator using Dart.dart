// Part A: Function to calculate BMI
double calculateBMI(double weight, double height) {
  double bmi = weight / (height * height);
  return bmi;
}

// Part B: Function to determine BMI category
String getBMICategory(double bmi) {
  if (bmi < 18.5) {
    return "Underweight";
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    return "Normal";
  } else if (bmi >= 25 && bmi <= 29.9) {
    return "Overweight";
  } else {
    return "Obese";
  }
}

// Part C: Main function
void main() {
  double weight = 68.0;   // weight in kg
  double height = 1.70;   // height in meters

  double bmi = calculateBMI(weight, height);
  String category = getBMICategory(bmi);

  print("Your BMI is: ${bmi.toStringAsFixed(2)}");
  print("Category: $category");
}