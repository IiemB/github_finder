import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class ResponseUserModel with _$ResponseUserModel {
  factory ResponseUserModel({
    @Default(0) int? total_count,
    @Default([]) List<UserModel>? items,
  }) = _ResponseUserModel;

  factory ResponseUserModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserModelFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @Default(0) int? id,
    @Default('') String? login,
    @Default('') String? node_id,
    @Default('') String? avatar_url,
    @Default('') String? url,
    @Default('') String? html_url,
    @Default('') String? type,
    @Default(0.0) double? score,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> data) =>
      _$UserModelFromJson(data);
}
