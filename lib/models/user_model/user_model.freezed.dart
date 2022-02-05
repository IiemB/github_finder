// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseUserModel _$ResponseUserModelFromJson(Map<String, dynamic> json) {
  return _ResponseUserModel.fromJson(json);
}

/// @nodoc
class _$ResponseUserModelTearOff {
  const _$ResponseUserModelTearOff();

  _ResponseUserModel call(
      {int? total_count = 0, List<UserModel>? items = const []}) {
    return _ResponseUserModel(
      total_count: total_count,
      items: items,
    );
  }

  ResponseUserModel fromJson(Map<String, Object?> json) {
    return ResponseUserModel.fromJson(json);
  }
}

/// @nodoc
const $ResponseUserModel = _$ResponseUserModelTearOff();

/// @nodoc
mixin _$ResponseUserModel {
  int? get total_count => throw _privateConstructorUsedError;
  List<UserModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseUserModelCopyWith<ResponseUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseUserModelCopyWith<$Res> {
  factory $ResponseUserModelCopyWith(
          ResponseUserModel value, $Res Function(ResponseUserModel) then) =
      _$ResponseUserModelCopyWithImpl<$Res>;
  $Res call({int? total_count, List<UserModel>? items});
}

/// @nodoc
class _$ResponseUserModelCopyWithImpl<$Res>
    implements $ResponseUserModelCopyWith<$Res> {
  _$ResponseUserModelCopyWithImpl(this._value, this._then);

  final ResponseUserModel _value;
  // ignore: unused_field
  final $Res Function(ResponseUserModel) _then;

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
              as List<UserModel>?,
    ));
  }
}

/// @nodoc
abstract class _$ResponseUserModelCopyWith<$Res>
    implements $ResponseUserModelCopyWith<$Res> {
  factory _$ResponseUserModelCopyWith(
          _ResponseUserModel value, $Res Function(_ResponseUserModel) then) =
      __$ResponseUserModelCopyWithImpl<$Res>;
  @override
  $Res call({int? total_count, List<UserModel>? items});
}

/// @nodoc
class __$ResponseUserModelCopyWithImpl<$Res>
    extends _$ResponseUserModelCopyWithImpl<$Res>
    implements _$ResponseUserModelCopyWith<$Res> {
  __$ResponseUserModelCopyWithImpl(
      _ResponseUserModel _value, $Res Function(_ResponseUserModel) _then)
      : super(_value, (v) => _then(v as _ResponseUserModel));

  @override
  _ResponseUserModel get _value => super._value as _ResponseUserModel;

  @override
  $Res call({
    Object? total_count = freezed,
    Object? items = freezed,
  }) {
    return _then(_ResponseUserModel(
      total_count: total_count == freezed
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseUserModel implements _ResponseUserModel {
  _$_ResponseUserModel({this.total_count = 0, this.items = const []});

  factory _$_ResponseUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseUserModelFromJson(json);

  @JsonKey()
  @override
  final int? total_count;
  @JsonKey()
  @override
  final List<UserModel>? items;

  @override
  String toString() {
    return 'ResponseUserModel(total_count: $total_count, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseUserModel &&
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
  _$ResponseUserModelCopyWith<_ResponseUserModel> get copyWith =>
      __$ResponseUserModelCopyWithImpl<_ResponseUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseUserModelToJson(this);
  }
}

abstract class _ResponseUserModel implements ResponseUserModel {
  factory _ResponseUserModel({int? total_count, List<UserModel>? items}) =
      _$_ResponseUserModel;

  factory _ResponseUserModel.fromJson(Map<String, dynamic> json) =
      _$_ResponseUserModel.fromJson;

  @override
  int? get total_count;
  @override
  List<UserModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$ResponseUserModelCopyWith<_ResponseUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {int? id = 0,
      String? login = '',
      String? node_id = '',
      String? avatar_url = '',
      String? url = '',
      String? html_url = '',
      String? type = '',
      double? score = 0.0}) {
    return _UserModel(
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

  UserModel fromJson(Map<String, Object?> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
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
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
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
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

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
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
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
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

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
    return _then(_UserModel(
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
class _$_UserModel implements _UserModel {
  _$_UserModel(
      {this.id = 0,
      this.login = '',
      this.node_id = '',
      this.avatar_url = '',
      this.url = '',
      this.html_url = '',
      this.type = '',
      this.score = 0.0});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

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
    return 'UserModel(id: $id, login: $login, node_id: $node_id, avatar_url: $avatar_url, url: $url, html_url: $html_url, type: $type, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModel &&
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
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {int? id,
      String? login,
      String? node_id,
      String? avatar_url,
      String? url,
      String? html_url,
      String? type,
      double? score}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

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
  _$UserModelCopyWith<_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
