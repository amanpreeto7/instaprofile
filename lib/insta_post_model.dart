class InstaPostModel {
  List<String>? images;
  String? caption;
  String? hashtags;

  InstaPostModel({
    this.images,
    this.caption,
    this.hashtags,
  });

  factory InstaPostModel.fromJson(Map<String, dynamic> json) => InstaPostModel(
        images: json["images"] == null
            ? []
            : List<String>.from(json["images"]!.map((x) => x)),
        caption: json["caption"],
        hashtags: json["hashtags"],
      );

  Map<String, dynamic> toJson() => {
        "images":
            images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "caption": caption,
        "hashtags": hashtags,
      };
}
