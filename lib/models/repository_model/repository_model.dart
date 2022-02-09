import 'package:freezed_annotation/freezed_annotation.dart';

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
    @Default('') String? login,
    @Default('') String? node_id,
    @Default('') String? avatar_url,
    @Default('') String? url,
    @Default('') String? html_url,
    @Default('') String? type,
    @Default(0.0) double? score,
  }) = _RepositoryModel;

  factory RepositoryModel.fromJson(Map<String, dynamic> data) =>
      _$RepositoryModelFromJson(data);
}
