class BookModel {
  int bookId;
  String bookTitle;
  String bookImg;
  List<String> bookHal;
  List<String> bookAud;

  BookModel({
    required this.bookId,
    required this.bookTitle,
    required this.bookImg,
    required this.bookHal,
    required this.bookAud,
  });
}
