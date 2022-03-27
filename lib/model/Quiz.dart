class Quiz{
  final String image_url;
  final String answer;
  final List choice_list;

  Quiz({
    required this.image_url,
    required this.answer,
    required this.choice_list,
  });

  factory Quiz.fromJson(Map<String, dynamic> json) {
    return Quiz(
      image_url:  json["image_url"],
      answer:   json["answer"],
      choice_list:   (json['choice_list'] as List).map((choice_list) => choice_list).toList() ,
    );
  }
}