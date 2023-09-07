library image_upload_response_model;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_upload.g.dart';

abstract class ImageUploadResponseModel
    implements
        Built<ImageUploadResponseModel, ImageUploadResponseModelBuilder> {
  ImageUploadResponseModel._();

  factory ImageUploadResponseModel(
          [Function(ImageUploadResponseModelBuilder b) updates]) =
      _$ImageUploadResponseModel;

  @BuiltValueField(wireName: 'id')
  String? get id;

  static Serializer<ImageUploadResponseModel> get serializer =>
      _$imageUploadResponseModelSerializer;
}

abstract class ImageUploadModel
    implements Built<ImageUploadModel, ImageUploadModelBuilder> {
  ImageUploadModel._();

  factory ImageUploadModel([Function(ImageUploadModelBuilder b) updates]) =
      _$ImageUploadModel;

  @BuiltValueField(wireName: 'file')
  String? get file;

  static Serializer<ImageUploadModel> get serializer =>
      _$imageUploadModelSerializer;
}
