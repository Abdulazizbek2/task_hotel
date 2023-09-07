import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../domain/image_upload/i_image_upload_facade.dart';
import '../../domain/image_upload/image_upload_failure.dart';
import '../../domain/image_upload/object_type.dart';
import '../apis/apis.dart';
import '../core/exceptions.dart';
import '../models/image_upload/image_upload.dart';

class ImageUploadRepo implements IImageUploadFacade {
  final ImageUploadService _imageUploadService;

  ImageUploadRepo(this._imageUploadService);

  @override
  Future<Either<ImageUploadFailure, ImageUploadResponseModel>> imageUpload(
    // ContentTypeImage contentType,
    ObjectTypeImage objectType,
    String imagePath,
  ) async {
    try {
      final res = await _imageUploadService.imageUpload(
        objectType.objectTypeEnumToString,
        imagePath,
      );
      if (res.isSuccessful) {
        assert(res.body != null);

        return right(res.body!);
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }
}
