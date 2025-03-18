class User {
  String firstName;
  String lastName;
  int age;
  int phone;

  User({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.phone,
  });

  @override
  String toString() {
    return 'User{name: $firstName $lastName, age: $age, phone: $phone}';
  }
}

class UserBuilder {
  String? _firstName;
  String? _lastName;
  int? _age;
  int? _phone;

  UserBuilder setFirstName(String name) {
    _firstName = name;
    return this;
  }

  UserBuilder setLastName(String name) {
    _lastName = name;
    return this;
  }

  UserBuilder setAge(int age) {
    _age = age;
    return this;
  }

  UserBuilder setPhone(int phone) {
    _phone = phone;
    return this;
  }

  User build() {
    if (_firstName == null ||
        _lastName == null ||
        _age == null ||
        _phone == null) {
      throw Exception('Missing required properties');
    }
    return User(
      firstName: _firstName!,
      lastName: _lastName!,
      age: _age!,
      phone: _phone!,
    );
  }
}

void main() {
  User user =
      UserBuilder()
          .setFirstName('Ahmed')
          .setLastName('Elnahrawy')
          .setAge(22)
          .setPhone(01234567892)
          .build();

  print(user);
}
