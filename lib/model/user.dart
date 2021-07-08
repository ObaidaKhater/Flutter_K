enum Gender { male, female }

abstract class User {
  String id;
  String fullName;
  String ssn;
  String phoneNumber1;
  String phoneNumber2;
  String emilAddress;
  DateTime dateJone;
  DateTime dataBirthday;
  String password;
  DateTime lastLogin;
  Gender gender;
  String nationality;

  User(
      this.id,
      this.fullName,
      this.ssn,
      this.phoneNumber1,
      this.phoneNumber2,
      this.emilAddress,
      this.dateJone,
      this.dataBirthday,
      this.password,
      this.lastLogin,
      this.gender,
      this.nationality);
}
