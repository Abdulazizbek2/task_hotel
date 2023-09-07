enum ObjectTypeImage { avatar, postImage }

extension ObjectTypeToString on ObjectTypeImage {
  String get objectTypeEnumToString {
    switch (this) {
      case ObjectTypeImage.avatar:
        return "avatar";
      case ObjectTypeImage.postImage:
        return "post_image";
    }
  }
}
