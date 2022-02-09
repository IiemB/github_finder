// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repository_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseRepositoryModel _$ResponseRepositoryModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseRepositoryModel.fromJson(json);
}

/// @nodoc
class _$ResponseRepositoryModelTearOff {
  const _$ResponseRepositoryModelTearOff();

  _ResponseRepositoryModel call(
      {int? total_count = 0, List<RepositoryModel>? items = const []}) {
    return _ResponseRepositoryModel(
      total_count: total_count,
      items: items,
    );
  }

  ResponseRepositoryModel fromJson(Map<String, Object?> json) {
    return ResponseRepositoryModel.fromJson(json);
  }
}

/// @nodoc
const $ResponseRepositoryModel = _$ResponseRepositoryModelTearOff();

/// @nodoc
mixin _$ResponseRepositoryModel {
  int? get total_count => throw _privateConstructorUsedError;
  List<RepositoryModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseRepositoryModelCopyWith<ResponseRepositoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseRepositoryModelCopyWith<$Res> {
  factory $ResponseRepositoryModelCopyWith(ResponseRepositoryModel value,
          $Res Function(ResponseRepositoryModel) then) =
      _$ResponseRepositoryModelCopyWithImpl<$Res>;
  $Res call({int? total_count, List<RepositoryModel>? items});
}

/// @nodoc
class _$ResponseRepositoryModelCopyWithImpl<$Res>
    implements $ResponseRepositoryModelCopyWith<$Res> {
  _$ResponseRepositoryModelCopyWithImpl(this._value, this._then);

  final ResponseRepositoryModel _value;
  // ignore: unused_field
  final $Res Function(ResponseRepositoryModel) _then;

  @override
  $Res call({
    Object? total_count = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      total_count: total_count == freezed
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepositoryModel>?,
    ));
  }
}

/// @nodoc
abstract class _$ResponseRepositoryModelCopyWith<$Res>
    implements $ResponseRepositoryModelCopyWith<$Res> {
  factory _$ResponseRepositoryModelCopyWith(_ResponseRepositoryModel value,
          $Res Function(_ResponseRepositoryModel) then) =
      __$ResponseRepositoryModelCopyWithImpl<$Res>;
  @override
  $Res call({int? total_count, List<RepositoryModel>? items});
}

/// @nodoc
class __$ResponseRepositoryModelCopyWithImpl<$Res>
    extends _$ResponseRepositoryModelCopyWithImpl<$Res>
    implements _$ResponseRepositoryModelCopyWith<$Res> {
  __$ResponseRepositoryModelCopyWithImpl(_ResponseRepositoryModel _value,
      $Res Function(_ResponseRepositoryModel) _then)
      : super(_value, (v) => _then(v as _ResponseRepositoryModel));

  @override
  _ResponseRepositoryModel get _value =>
      super._value as _ResponseRepositoryModel;

  @override
  $Res call({
    Object? total_count = freezed,
    Object? items = freezed,
  }) {
    return _then(_ResponseRepositoryModel(
      total_count: total_count == freezed
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepositoryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseRepositoryModel implements _ResponseRepositoryModel {
  _$_ResponseRepositoryModel({this.total_count = 0, this.items = const []});

  factory _$_ResponseRepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseRepositoryModelFromJson(json);

  @JsonKey()
  @override
  final int? total_count;
  @JsonKey()
  @override
  final List<RepositoryModel>? items;

  @override
  String toString() {
    return 'ResponseRepositoryModel(total_count: $total_count, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseRepositoryModel &&
            const DeepCollectionEquality()
                .equals(other.total_count, total_count) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(total_count),
      const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$ResponseRepositoryModelCopyWith<_ResponseRepositoryModel> get copyWith =>
      __$ResponseRepositoryModelCopyWithImpl<_ResponseRepositoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseRepositoryModelToJson(this);
  }
}

abstract class _ResponseRepositoryModel implements ResponseRepositoryModel {
  factory _ResponseRepositoryModel(
      {int? total_count,
      List<RepositoryModel>? items}) = _$_ResponseRepositoryModel;

  factory _ResponseRepositoryModel.fromJson(Map<String, dynamic> json) =
      _$_ResponseRepositoryModel.fromJson;

  @override
  int? get total_count;
  @override
  List<RepositoryModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$ResponseRepositoryModelCopyWith<_ResponseRepositoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RepositoryModel _$RepositoryModelFromJson(Map<String, dynamic> json) {
  return _RepositoryModel.fromJson(json);
}

/// @nodoc
class _$RepositoryModelTearOff {
  const _$RepositoryModelTearOff();

  _RepositoryModel call(
      {int? id = 0,
      String? login = '',
      String? node_id = '',
      String? avatar_url = '',
      String? url = '',
      String? html_url = '',
      String? type = '',
      double? score = 0.0}) {
    return _RepositoryModel(
      id: id,
      login: login,
      node_id: node_id,
      avatar_url: avatar_url,
      url: url,
      html_url: html_url,
      type: type,
      score: score,
    );
  }

  RepositoryModel fromJson(Map<String, Object?> json) {
    return RepositoryModel.fromJson(json);
  }
}

/// @nodoc
const $RepositoryModel = _$RepositoryModelTearOff();

/// @nodoc
mixin _$RepositoryModel {
  int? get id => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get node_id => throw _privateConstructorUsedError;
  String? get avatar_url => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get html_url => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryModelCopyWith<RepositoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryModelCopyWith<$Res> {
  factory $RepositoryModelCopyWith(
          RepositoryModel value, $Res Function(RepositoryModel) then) =
      _$RepositoryModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? login,
      String? node_id,
      String? avatar_url,
      String? url,
      String? html_url,
      String? type,
      double? score});
}

/// @nodoc
class _$RepositoryModelCopyWithImpl<$Res>
    implements $RepositoryModelCopyWith<$Res> {
  _$RepositoryModelCopyWithImpl(this._value, this._then);

  final RepositoryModel _value;
  // ignore: unused_field
  final $Res Function(RepositoryModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? node_id = freezed,
    Object? avatar_url = freezed,
    Object? url = freezed,
    Object? html_url = freezed,
    Object? type = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      node_id: node_id == freezed
          ? _value.node_id
          : node_id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: html_url == freezed
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$RepositoryModelCopyWith<$Res>
    implements $RepositoryModelCopyWith<$Res> {
  factory _$RepositoryModelCopyWith(
          _RepositoryModel value, $Res Function(_RepositoryModel) then) =
      __$RepositoryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? login,
      String? node_id,
      String? avatar_url,
      String? url,
      String? html_url,
      String? type,
      double? score});
}

/// @nodoc
class __$RepositoryModelCopyWithImpl<$Res>
    extends _$RepositoryModelCopyWithImpl<$Res>
    implements _$RepositoryModelCopyWith<$Res> {
  __$RepositoryModelCopyWithImpl(
      _RepositoryModel _value, $Res Function(_RepositoryModel) _then)
      : super(_value, (v) => _then(v as _RepositoryModel));

  @override
  _RepositoryModel get _value => super._value as _RepositoryModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? node_id = freezed,
    Object? avatar_url = freezed,
    Object? url = freezed,
    Object? html_url = freezed,
    Object? type = freezed,
    Object? score = freezed,
  }) {
    return _then(_RepositoryModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      node_id: node_id == freezed
          ? _value.node_id
          : node_id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: html_url == freezed
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepositoryModel implements _RepositoryModel {
  _$_RepositoryModel(
      {this.id = 0,
      this.login = '',
      this.node_id = '',
      this.avatar_url = '',
      this.url = '',
      this.html_url = '',
      this.type = '',
      this.score = 0.0});

  factory _$_RepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_RepositoryModelFromJson(json);

  @JsonKey()
  @override
  final int? id;
  @JsonKey()
  @override
  final String? login;
  @JsonKey()
  @override
  final String? node_id;
  @JsonKey()
  @override
  final String? avatar_url;
  @JsonKey()
  @override
  final String? url;
  @JsonKey()
  @override
  final String? html_url;
  @JsonKey()
  @override
  final String? type;
  @JsonKey()
  @override
  final double? score;

  @override
  String toString() {
    return 'RepositoryModel(id: $id, login: $login, node_id: $node_id, avatar_url: $avatar_url, url: $url, html_url: $html_url, type: $type, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepositoryModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.node_id, node_id) &&
            const DeepCollectionEquality()
                .equals(other.avatar_url, avatar_url) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.html_url, html_url) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(node_id),
      const DeepCollectionEquality().hash(avatar_url),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(html_url),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
  _$RepositoryModelCopyWith<_RepositoryModel> get copyWith =>
      __$RepositoryModelCopyWithImpl<_RepositoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositoryModelToJson(this);
  }
}

abstract class _RepositoryModel implements RepositoryModel {
  factory _RepositoryModel(
      {int? id,
      String? login,
      String? node_id,
      String? avatar_url,
      String? url,
      String? html_url,
      String? type,
      double? score}) = _$_RepositoryModel;

  factory _RepositoryModel.fromJson(Map<String, dynamic> json) =
      _$_RepositoryModel.fromJson;

  @override
  int? get id;
  @override
  String? get login;
  @override
  String? get node_id;
  @override
  String? get avatar_url;
  @override
  String? get url;
  @override
  String? get html_url;
  @override
  String? get type;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$RepositoryModelCopyWith<_RepositoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
