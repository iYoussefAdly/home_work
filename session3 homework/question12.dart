void main() {
  List<Map<String, dynamic>> phoneNumbers = [
    {"PhoneNumber": "01243583912"},
    {"PhoneNumber": "01232233492"},
    {"PhoneNumber": null}
  ];
  for (var phonenumber in phoneNumbers) {
    if (phonenumber["PhoneNumber"] == null) {
      print("PhoneNumber is empty for this user");
      phonenumber["PhoneNumber"] = "01242131413";
      print(phonenumber["PhoneNumber"].length);
    }
  }
}
