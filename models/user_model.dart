class User {
  const User({
    required this.name,
    required this.role,
    required this.age,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] as String,
      role: json['role'] as String,
      age: json['age'] as String, // Assuming age is stored as a numeric type
    );
  }

  final String name;
  final String role;
  final String age;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'role': role,
      'age': age,
    };
  }
}
