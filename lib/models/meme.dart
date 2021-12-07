part of models;

@freezed
class Meme with _$Meme {
  const factory Meme({
    required String name,
    required String image,
  }) = Meme$;

  factory Meme.fromJson(Map<dynamic, dynamic> json) => _$MemeFromJson(Map<String, dynamic>.from(json));
}
