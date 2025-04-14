class User {
  final int? id;
  final String name;
  final String email;
  final String password;
  final String role; // 'student' or 'admin'

  User({this.id, required this.name, required this.email, required this.password, required this.role});

  Map<String, dynamic> toMap() {
    return {
      'user_id': id,
      'name': name,
      'email': email,
      'password': password,
      'role': role,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['user_id'],
      name: map['name'],
      email: map['email'],
      password: map['password'],
      role: map['role'],
    );
  }
}
