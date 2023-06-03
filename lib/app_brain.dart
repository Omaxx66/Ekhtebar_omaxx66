import 'questions.dart';

class AppBrain {
  int _questionNumber = 0;

  List<Questions> _questionGroup = [
    Questions(
      q: 'ما التطبيق الأكثر تنزيلًا لعام 2022',
      i: 'images/1.jpg',
      a1: 'twitter',
      a2: 'youtube',
      a3: 'tiktok',
      a: 4,
    ),
    Questions(
      q: 'ما البحر الذي يفصل أوروبا عن أفريقيا؟ ',
      i: 'images/2.jpg',
      a1: 'الابيض الممتوسط',
      a2: 'الاحمر ',
      a3: 'الاسود',
      a: 2,
    ),
    Questions(
      q: 'من هو الشخص الوحيد الذي يُسمح له بالقيادة دون رخصة في المملكة المتحدة؟ ',
      i: 'images/3.jpg',
      a1: 'الوزير',
      a2: ' الملكة إليزابيث',
      a3: 'رجل الشرطة',
      a: 3,
    ),
    Questions(
      q: 'اي من مسرحيات شكسبير هي الأطول؟',
      i: 'images/4.jpg',
      a1: 'الواد سيد الشغال',
      a2: 'واحدة ونص',
      a3: 'هاملت',
      a: 4,
    ),
    Questions(
      q: 'ما لون لسان الزرافة؟ ',
      i: 'images/5.jpg',
      a1: 'ازرق',
      a2: 'احمر',
      a3: 'وردي',
      a: 2,
    ),
    Questions(
      q: 'ما الدولة الأولى التي منحت النساء حق التصويت في عام 1893؟ ',
      i: 'images/6.jpg',
      a1: 'فرنسا',
      a2: 'تركيا',
      a3: 'نيوزيلاندا',
      a: 4,
    ),
    Questions(
      q: 'ما اسم أعلى جبل في قارة أفريقيا؟ ',
      i: 'images/7.jpg',
      a1: 'إفرست',
      a2: 'كليمنجارو',
      a3: 'الالب',
      a: 3,
    ),
    Questions(
      q: 'ما عاصمة آيسلندا؟  ',
      i: 'images/8.jpg',
      a1: 'ريكيافيك',
      a2: 'لندن',
      a3: 'اسطنبول',
      a: 2,
    ),
    Questions(
      q: 'ما الاسم الأكثر شهرةً للوحة (لا جيوكوندا)؟  ',
      i: 'images/9.jpg',
      a1: 'الموناليزا',
      a2: 'الكهف',
      a3: 'العشاءالاخير',
      a: 2,
    ),
    Questions(
      q: 'ما الكوكب الثامن والأبعد عن النظام الشمسي؟ ',
      i: 'images/10.jpg',
      a1: 'عطارد',
      a2: 'بلوتو',
      a3: 'نبتون ',
      a: 4,
    ),
    Questions(
      q: 'ما اللون الموجود في 75% من أعلام الدول؟ ',
      i: 'images/11.jpg',
      a1: 'الاحمر',
      a2: 'الأخضر',
      a3: 'الابيض',
      a: 3,
    ),
    Questions(
      q: 'ما لقب عائلة الملكة إليزابيث الثانية؟ ',
      i: 'images/12.jpg',
      a1: 'روتشيلد',
      a2: 'هالمت',
      a3: 'وندسور',
      a: 4,
    ),
    Questions(
      q: 'من اكتشف البنسلين؟',
      i: 'images/13.jpg',
      a1: ' ألكساندر فليمنغ',
      a2: 'عوكل',
      a3: 'بوحا',
      a: 2,
    ),
    Questions(
      q: 'في أي سنة وقعت كارثة تشيرنوبيل؟ ',
      i: 'images/14.jpg',
      a1: '1976 ',
      a2: '1996 ',
      a3: '1986 ',
      a: 4,
    ),
    Questions(
      q: 'ما قطعة الفاكهة الموضوعة على قمة كأس ويمبلدون للرجال في لعبة التنس؟ ',
      i: 'images/15.jpg',
      a1: 'التفاح',
      a2: ' الأناناس',
      a3: 'الموز',
      a: 3,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionGroup.length - 1) {
      _questionNumber++;
    } else {
      _questionNumber = 0;
    }
  }

  String getquestionText() {
    return _questionGroup[_questionNumber].questionText;
  }

  String getquestionImages() {
    return _questionGroup[_questionNumber].questionImages;
  }

  String getAnswer1() {
    return _questionGroup[_questionNumber].Answer1;
  }

  String getAnswer2() {
    return _questionGroup[_questionNumber].Answer2;
  }

  String getAnswer3() {
    return _questionGroup[_questionNumber].Answer3;
  }

  int getqueastionAnswer() {
    return _questionGroup[_questionNumber].queastionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionGroup.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
