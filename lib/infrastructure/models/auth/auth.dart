library barber_sign_up_model;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth.g.dart';

abstract class BarberSignUpModel
    implements Built<BarberSignUpModel, BarberSignUpModelBuilder> {
  BarberSignUpModel._();

  factory BarberSignUpModel([Function(BarberSignUpModelBuilder b) updates]) =
      _$BarberSignUpModel;

  @BuiltValueField(wireName: 'address')
  String? get address;

  @BuiltValueField(wireName: 'description')
  String? get description;

  @BuiltValueField(wireName: 'fullname')
  String? get fullname;

  @BuiltValueField(wireName: 'password')
  String? get password;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'retyping_password')
  String? get retypingPassword;

  @BuiltValueField(wireName: 'profile_photo')
  String? get profilePhoto;

  @BuiltValueField(wireName: 'username')
  String? get username;

  static Serializer<BarberSignUpModel> get serializer =>
      _$barberSignUpModelSerializer;
}

abstract class SignUpResponseModel
    implements Built<SignUpResponseModel, SignUpResponseModelBuilder> {
  SignUpResponseModel._();

  factory SignUpResponseModel(
      [Function(SignUpResponseModelBuilder b) updates]) = _$SignUpResponseModel;

  @BuiltValueField(wireName: 'access_token')
  String? get accessToken;

  @BuiltValueField(wireName: 'id')
  String? get id;

  @BuiltValueField(wireName: 'refresh_token')
  String? get refreshToken;

  @BuiltValueField(wireName: 'uesr_type')
  String? get userType;

  static Serializer<SignUpResponseModel> get serializer =>
      _$signUpResponseModelSerializer;
}

abstract class SuccessResponseModel
    implements Built<SuccessResponseModel, SuccessResponseModelBuilder> {
  SuccessResponseModel._();

  factory SuccessResponseModel(
          [Function(SuccessResponseModelBuilder b) updates]) =
      _$SuccessResponseModel;

  @BuiltValueField(wireName: 'message')
  String? get message;

  static Serializer<SuccessResponseModel> get serializer =>
      _$successResponseModelSerializer;
}

abstract class LoginModel implements Built<LoginModel, LoginModelBuilder> {
  LoginModel._();

  factory LoginModel([Function(LoginModelBuilder b) updates]) = _$LoginModel;

  @BuiltValueField(wireName: 'password')
  String? get password;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  static Serializer<LoginModel> get serializer => _$loginModelSerializer;
}
