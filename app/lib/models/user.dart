import 'package:app/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Account {
  final String email;
  final String token;
  final String username;
  final String bio;
  final Uri image;

  User(this.email, this.token, this.username, this.bio, this.image)
      : super([email, token, username, bio, image]);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  bool get isAnonymous => false;
}
