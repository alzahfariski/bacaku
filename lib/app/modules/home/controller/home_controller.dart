import 'package:audioplayers/audioplayers.dart';
import 'package:bacaku/app/data/book_data.dart';
import 'package:bacaku/app/data/bunyi_data.dart';
import 'package:bacaku/app/data/huruf_data.dart';
import 'package:bacaku/app/data/kosa_data.dart';
import 'package:bacaku/app/data/suku_data.dart';
import 'package:bacaku/app/models/book_model.dart';
import 'package:bacaku/app/models/bunyi_model.dart';
import 'package:bacaku/app/models/huruf_model.dart';
import 'package:bacaku/app/models/kosa_model.dart';
import 'package:bacaku/app/models/suku_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<BookModel> book = <BookModel>[].obs;
  RxList<HurufModel> huruf = <HurufModel>[].obs;
  RxList<KosaModel> kosa = <KosaModel>[].obs;
  RxList<BunyiModel> bunyi = <BunyiModel>[].obs;
  RxList<SukuModel> suku = <SukuModel>[].obs;
  AudioPlayer player = AudioPlayer();

  @override
  void onInit() {
    super.onInit();
    book.assignAll(BookData.dataBook);
    huruf.assignAll(HurufData.dataHuruf);
    kosa.assignAll(KosaData.dataKosa);
    bunyi.assignAll(BunyiData.dataBunyi);
    suku.assignAll(SukuData.dataSuku);
  }

  Future<void> playSound(String audio) async {
    await player.play(AssetSource(audio));
  }
}
