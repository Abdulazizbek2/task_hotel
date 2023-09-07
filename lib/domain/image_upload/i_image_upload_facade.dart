import 'package:dartz/dartz.dart';
import '../../infrastructure/models/image_upload/image_upload.dart';
import 'image_upload_failure.dart';
import 'object_type.dart';

abstract class IImageUploadFacade {
  Future<Either<ImageUploadFailure, ImageUploadResponseModel>> imageUpload(
    // ContentTypeImage contentType,
    ObjectTypeImage objectType,
    String imagePath,
  );
}
