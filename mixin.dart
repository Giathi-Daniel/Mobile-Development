class Employee {
  void clockIn() {
    print("Employee clocked in");
  }
}

mixin Medical {
  int takeTemperature(){
    print("Takin temperature");
    return 98;
  }
}

class Nurse extends Employee with Medical {}

class Doctor extends Employee with Medical{
  void performSurgery(){
    print("Performing surgery");
  }
}

class Bartender extends Employee {}

void main(){
  Nurse nurse = Nurse();
  Doctor doc = Doctor();
  Bartender bartender = Bartender();
  
  nurse.clockIn();
  nurse.takeTemperature();
  
  doc.clockIn();
  doc.takeTemperature();
  doc.performSurgery();
  
  bartender.clockIn();
}
