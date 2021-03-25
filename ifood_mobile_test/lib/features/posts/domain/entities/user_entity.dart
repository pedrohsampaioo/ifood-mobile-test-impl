class UserEntity {
  final String id;
  final String name;
  final String username;

  const UserEntity({
    required this.id,
    required this.name,
    required this.username,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserEntity &&
        other.id == id &&
        other.name == name &&
        other.username == username;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ username.hashCode;

  @override
  String toString() => 'UserEntity(id: $id, name: $name, username: $username)';
}
