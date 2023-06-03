class Questions {
  late String questionImages;
  late String questionText;
  late String Answer1;
  late String Answer2;
  late String Answer3;
  late int queastionAnswer;

  Questions({
    required String q,
    required String i,
    required String a1,
    required String a2,
    required String a3,
    required int a,
  }) {
    questionText = q;
    questionImages = i;
    Answer1 = a1;
    Answer2 = a2;
    Answer3 = a3;
    queastionAnswer = a;
  }
}
