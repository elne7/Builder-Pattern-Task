class UserModel {
  final String firstName;
  final String lastName;
  final int? age;
  final int? phone;

  UserModel({
    required this.firstName,
    required this.lastName,
    this.age,
    this.phone,
  });
}