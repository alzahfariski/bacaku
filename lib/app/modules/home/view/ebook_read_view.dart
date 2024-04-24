import 'package:bacaku/app/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdfx/pdfx.dart';

class EbookReadView extends StatefulWidget {
  const EbookReadView({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<EbookReadView> createState() => _EbookReadViewState();
}

class _EbookReadViewState extends State<EbookReadView> {
  final homeController = Get.put(HomeController());
  late PdfControllerPinch pdfControllerPinch;
  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document:
            PdfDocument.openAsset(homeController.book[widget.id].bookPath));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(homeController.book[widget.id].bookTitle),
      ),
      body: Column(
        children: [
          _pdfView(),
        ],
      ),
    );
  }

  Widget _pdfView() {
    return Expanded(
      child: PdfViewPinch(
        scrollDirection: Axis.vertical,
        controller: pdfControllerPinch,
      ),
    );
  }
}
