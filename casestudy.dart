import 'dart:io';

class Parcel {
  late int id;
  late var housenum;
  late var entered_at;
  late var overdued;

  Parcel(int id, int housenum) {
    this.id = id;
    this.housenum = housenum;
    var entered_at = new DateTime.now();
    var overdued = entered_at.add(new Duration(hours: 48));
    this.entered_at = entered_at;
    this.overdued = overdued;
  }
}

// class Storage {
//   var lst = new List(5); 

//    lst[0] = 12; 
//    lst[1] = 13; 
//    lst[2] = 11; 
//    print(lst); 
   
// }

void main() {

    for (var x = 1; x <= 30; x++) {

        print("\n" + "Menu: ");
        print("1. Parcel entry");
        print("2. Exit");

        stdout.write("Input the number: ");
        int input = int.parse(stdin.readLineSync()!);

        if (input == 1) {
        print("\n" + "-Parcel Entry-");
        parcel();
        } else if (input == 2) {
        print("\n" + "Thank you !");
        break;
        }
        else {
        print("\n" + "Wrong input");
        }
    }
}

void parcel() {
  
  stdout.write("Enter the house number: ");
  int input = int.parse(stdin.readLineSync()!);

  if (input <= 30) {
    stdout.write("Enter the parcel id: ");
    int id = int.parse(stdin.readLineSync()!);

    if (id <= 5) {
        var newParcel = Parcel(id, input);
        var parcelnum = newParcel.id;
        var hn = newParcel.housenum;
        var entry = newParcel.entered_at;
        var overdued = newParcel.overdued;

        print("\n" + "This is parcel number $parcelnum in the box for house number $hn");
        print("Date and time entry is at $entry");
        print("Parcel will be returned to sender after $overdued");
    } else {
        print("\n" + "Error. Maximum parcel for each house is 5");
    }
  } else {
    print("\n" + "Error. House number is below 30.");
  }

}
