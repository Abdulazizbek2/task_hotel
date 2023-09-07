// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_upload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageUploadResponseModel> _$imageUploadResponseModelSerializer =
    new _$ImageUploadResponseModelSerializer();
Serializer<ImageUploadModel> _$imageUploadModelSerializer =
    new _$ImageUploadModelSerializer();

class _$ImageUploadResponseModelSerializer
    implements StructuredSerializer<ImageUploadResponseModel> {
  @override
  final Iterable<Type> types = const [
    ImageUploadResponseModel,
    _$ImageUploadResponseModel
  ];
  @override
  final String wireName = 'ImageUploadResponseModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ImageUploadResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ImageUploadResponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageUploadResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageUploadModelSerializer
    implements StructuredSerializer<ImageUploadModel> {
  @override
  final Iterable<Type> types = const [ImageUploadModel, _$ImageUploadModel];
  @override
  final String wireName = 'ImageUploadModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImageUploadModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.file;
    if (value != null) {
      result
        ..add('file')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ImageUploadModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageUploadModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'file':
          result.file = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageUploadResponseModel extends ImageUploadResponseModel {
  @override
  final String? id;

  factory _$ImageUploadResponseModel(
          [void Function(ImageUploadResponseModelBuilder)? updates]) =>
      (new ImageUploadResponseModelBuilder()..update(updates))._build();

  _$ImageUploadResponseModel._({this.id}) : super._();

  @override
  ImageUploadResponseModel rebuild(
          void Function(ImageUploadResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageUploadResponseModelBuilder toBuilder() =>
      new ImageUploadResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageUploadResponseModel && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageUploadResponseModel')
          ..add('id', id))
        .toString();
  }
}

class ImageUploadResponseModelBuilder
    implements
        Builder<ImageUploadResponseModel, ImageUploadResponseModelBuilder> {
  _$ImageUploadResponseModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ImageUploadResponseModelBuilder();

  ImageUploadResponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageUploadResponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageUploadResponseModel;
  }

  @override
  void update(void Function(ImageUploadResponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageUploadResponseModel build() => _build();

  _$ImageUploadResponseModel _build() {
    final _$result = _$v ?? new _$ImageUploadResponseModel._(id: id);
    replace(_$result);
    return _$result;
  }
}

class _$ImageUploadModel extends ImageUploadModel {
  @override
  final String? file;

  factory _$ImageUploadModel(
          [void Function(ImageUploadModelBuilder)? updates]) =>
      (new ImageUploadModelBuilder()..update(updates))._build();

  _$ImageUploadModel._({this.file}) : super._();

  @override
  ImageUploadModel rebuild(void Function(ImageUploadModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageUploadModelBuilder toBuilder() =>
      new ImageUploadModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageUploadModel && file == other.file;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageUploadModel')..add('file', file))
        .toString();
  }
}

class ImageUploadModelBuilder
    implements Builder<ImageUploadModel, ImageUploadModelBuilder> {
  _$ImageUploadModel? _$v;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  ImageUploadModelBuilder();

  ImageUploadModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _file = $v.file;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageUploadModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageUploadModel;
  }

  @override
  void update(void Function(ImageUploadModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageUploadModel build() => _build();

  _$ImageUploadModel _build() {
    final _$result = _$v ?? new _$ImageUploadModel._(file: file);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
