// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BarberSignUpModel> _$barberSignUpModelSerializer =
    new _$BarberSignUpModelSerializer();
Serializer<SignUpResponseModel> _$signUpResponseModelSerializer =
    new _$SignUpResponseModelSerializer();
Serializer<SuccessResponseModel> _$successResponseModelSerializer =
    new _$SuccessResponseModelSerializer();
Serializer<LoginModel> _$loginModelSerializer = new _$LoginModelSerializer();

class _$BarberSignUpModelSerializer
    implements StructuredSerializer<BarberSignUpModel> {
  @override
  final Iterable<Type> types = const [BarberSignUpModel, _$BarberSignUpModel];
  @override
  final String wireName = 'BarberSignUpModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, BarberSignUpModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullname;
    if (value != null) {
      result
        ..add('fullname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.retypingPassword;
    if (value != null) {
      result
        ..add('retyping_password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profilePhoto;
    if (value != null) {
      result
        ..add('profile_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BarberSignUpModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BarberSignUpModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fullname':
          result.fullname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'retyping_password':
          result.retypingPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profile_photo':
          result.profilePhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SignUpResponseModelSerializer
    implements StructuredSerializer<SignUpResponseModel> {
  @override
  final Iterable<Type> types = const [
    SignUpResponseModel,
    _$SignUpResponseModel
  ];
  @override
  final String wireName = 'SignUpResponseModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SignUpResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.accessToken;
    if (value != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refreshToken;
    if (value != null) {
      result
        ..add('refresh_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userType;
    if (value != null) {
      result
        ..add('uesr_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SignUpResponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignUpResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'access_token':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'refresh_token':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uesr_type':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SuccessResponseModelSerializer
    implements StructuredSerializer<SuccessResponseModel> {
  @override
  final Iterable<Type> types = const [
    SuccessResponseModel,
    _$SuccessResponseModel
  ];
  @override
  final String wireName = 'SuccessResponseModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SuccessResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SuccessResponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SuccessResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginModelSerializer implements StructuredSerializer<LoginModel> {
  @override
  final Iterable<Type> types = const [LoginModel, _$LoginModel];
  @override
  final String wireName = 'LoginModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoginModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LoginModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$BarberSignUpModel extends BarberSignUpModel {
  @override
  final String? address;
  @override
  final String? description;
  @override
  final String? fullname;
  @override
  final String? password;
  @override
  final String? phoneNumber;
  @override
  final String? retypingPassword;
  @override
  final String? profilePhoto;
  @override
  final String? username;

  factory _$BarberSignUpModel(
          [void Function(BarberSignUpModelBuilder)? updates]) =>
      (new BarberSignUpModelBuilder()..update(updates))._build();

  _$BarberSignUpModel._(
      {this.address,
      this.description,
      this.fullname,
      this.password,
      this.phoneNumber,
      this.retypingPassword,
      this.profilePhoto,
      this.username})
      : super._();

  @override
  BarberSignUpModel rebuild(void Function(BarberSignUpModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BarberSignUpModelBuilder toBuilder() =>
      new BarberSignUpModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BarberSignUpModel &&
        address == other.address &&
        description == other.description &&
        fullname == other.fullname &&
        password == other.password &&
        phoneNumber == other.phoneNumber &&
        retypingPassword == other.retypingPassword &&
        profilePhoto == other.profilePhoto &&
        username == other.username;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, fullname.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, retypingPassword.hashCode);
    _$hash = $jc(_$hash, profilePhoto.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BarberSignUpModel')
          ..add('address', address)
          ..add('description', description)
          ..add('fullname', fullname)
          ..add('password', password)
          ..add('phoneNumber', phoneNumber)
          ..add('retypingPassword', retypingPassword)
          ..add('profilePhoto', profilePhoto)
          ..add('username', username))
        .toString();
  }
}

class BarberSignUpModelBuilder
    implements Builder<BarberSignUpModel, BarberSignUpModelBuilder> {
  _$BarberSignUpModel? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _fullname;
  String? get fullname => _$this._fullname;
  set fullname(String? fullname) => _$this._fullname = fullname;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _retypingPassword;
  String? get retypingPassword => _$this._retypingPassword;
  set retypingPassword(String? retypingPassword) =>
      _$this._retypingPassword = retypingPassword;

  String? _profilePhoto;
  String? get profilePhoto => _$this._profilePhoto;
  set profilePhoto(String? profilePhoto) => _$this._profilePhoto = profilePhoto;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  BarberSignUpModelBuilder();

  BarberSignUpModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _description = $v.description;
      _fullname = $v.fullname;
      _password = $v.password;
      _phoneNumber = $v.phoneNumber;
      _retypingPassword = $v.retypingPassword;
      _profilePhoto = $v.profilePhoto;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BarberSignUpModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BarberSignUpModel;
  }

  @override
  void update(void Function(BarberSignUpModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BarberSignUpModel build() => _build();

  _$BarberSignUpModel _build() {
    final _$result = _$v ??
        new _$BarberSignUpModel._(
            address: address,
            description: description,
            fullname: fullname,
            password: password,
            phoneNumber: phoneNumber,
            retypingPassword: retypingPassword,
            profilePhoto: profilePhoto,
            username: username);
    replace(_$result);
    return _$result;
  }
}

class _$SignUpResponseModel extends SignUpResponseModel {
  @override
  final String? accessToken;
  @override
  final String? id;
  @override
  final String? refreshToken;
  @override
  final String? userType;

  factory _$SignUpResponseModel(
          [void Function(SignUpResponseModelBuilder)? updates]) =>
      (new SignUpResponseModelBuilder()..update(updates))._build();

  _$SignUpResponseModel._(
      {this.accessToken, this.id, this.refreshToken, this.userType})
      : super._();

  @override
  SignUpResponseModel rebuild(
          void Function(SignUpResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpResponseModelBuilder toBuilder() =>
      new SignUpResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpResponseModel &&
        accessToken == other.accessToken &&
        id == other.id &&
        refreshToken == other.refreshToken &&
        userType == other.userType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, userType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpResponseModel')
          ..add('accessToken', accessToken)
          ..add('id', id)
          ..add('refreshToken', refreshToken)
          ..add('userType', userType))
        .toString();
  }
}

class SignUpResponseModelBuilder
    implements Builder<SignUpResponseModel, SignUpResponseModelBuilder> {
  _$SignUpResponseModel? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  String? _userType;
  String? get userType => _$this._userType;
  set userType(String? userType) => _$this._userType = userType;

  SignUpResponseModelBuilder();

  SignUpResponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _id = $v.id;
      _refreshToken = $v.refreshToken;
      _userType = $v.userType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpResponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpResponseModel;
  }

  @override
  void update(void Function(SignUpResponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpResponseModel build() => _build();

  _$SignUpResponseModel _build() {
    final _$result = _$v ??
        new _$SignUpResponseModel._(
            accessToken: accessToken,
            id: id,
            refreshToken: refreshToken,
            userType: userType);
    replace(_$result);
    return _$result;
  }
}

class _$SuccessResponseModel extends SuccessResponseModel {
  @override
  final String? message;

  factory _$SuccessResponseModel(
          [void Function(SuccessResponseModelBuilder)? updates]) =>
      (new SuccessResponseModelBuilder()..update(updates))._build();

  _$SuccessResponseModel._({this.message}) : super._();

  @override
  SuccessResponseModel rebuild(
          void Function(SuccessResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessResponseModelBuilder toBuilder() =>
      new SuccessResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuccessResponseModel && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SuccessResponseModel')
          ..add('message', message))
        .toString();
  }
}

class SuccessResponseModelBuilder
    implements Builder<SuccessResponseModel, SuccessResponseModelBuilder> {
  _$SuccessResponseModel? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SuccessResponseModelBuilder();

  SuccessResponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuccessResponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuccessResponseModel;
  }

  @override
  void update(void Function(SuccessResponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuccessResponseModel build() => _build();

  _$SuccessResponseModel _build() {
    final _$result = _$v ?? new _$SuccessResponseModel._(message: message);
    replace(_$result);
    return _$result;
  }
}

class _$LoginModel extends LoginModel {
  @override
  final String? password;
  @override
  final String? phoneNumber;

  factory _$LoginModel([void Function(LoginModelBuilder)? updates]) =>
      (new LoginModelBuilder()..update(updates))._build();

  _$LoginModel._({this.password, this.phoneNumber}) : super._();

  @override
  LoginModel rebuild(void Function(LoginModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginModelBuilder toBuilder() => new LoginModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginModel &&
        password == other.password &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginModel')
          ..add('password', password)
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class LoginModelBuilder implements Builder<LoginModel, LoginModelBuilder> {
  _$LoginModel? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  LoginModelBuilder();

  LoginModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _phoneNumber = $v.phoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginModel;
  }

  @override
  void update(void Function(LoginModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginModel build() => _build();

  _$LoginModel _build() {
    final _$result =
        _$v ?? new _$LoginModel._(password: password, phoneNumber: phoneNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
