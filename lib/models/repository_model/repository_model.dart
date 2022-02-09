import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_user_finder/models/user_model/user_model.dart';

part 'repository_model.freezed.dart';
part 'repository_model.g.dart';

@freezed
class ResponseRepositoryModel with _$ResponseRepositoryModel {
  factory ResponseRepositoryModel({
    @Default(0) int? total_count,
    @Default([]) List<RepositoryModel>? items,
  }) = _ResponseRepositoryModel;

  factory ResponseRepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseRepositoryModelFromJson(json);
}

@freezed
class RepositoryModel with _$RepositoryModel {
  factory RepositoryModel({
    @Default(0) int? id,
    UserModel? owner,
    @Default('') String? name,
    @Default('') String? node_id,
    @Default('') String? full_name,
    @Default('') String? url,
    @Default('') String? html_url,
    @Default(false) bool? private,
    @Default('') String? descriptions,
  }) = _RepositoryModel;

  factory RepositoryModel.fromJson(Map<String, dynamic> data) =>
      _$RepositoryModelFromJson(data);
}
