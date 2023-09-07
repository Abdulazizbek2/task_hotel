enum ContentTypeImage { imageJpeg, videoMp4 }

extension ContentTypeToString on ContentTypeImage {
  String get contentEnumToString {
    switch (this) {
      case ContentTypeImage.imageJpeg:
        return "image/jpeg";
      case ContentTypeImage.videoMp4:
        return "video/mp4";
    }
  }
}
