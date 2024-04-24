import 'package:bacaku/app/data/book_data.dart';
import 'package:bacaku/app/models/book_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<BookModel> book = <BookModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    book.assignAll(BookData.dataBook);
  }
}