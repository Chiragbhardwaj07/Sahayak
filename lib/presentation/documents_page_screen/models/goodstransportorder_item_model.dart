import '../../../core/app_export.dart';

/// This class is used in the [goodstransportorder_item_widget] screen.
class GoodstransportorderItemModel {
  GoodstransportorderItemModel({
    this.text,
    this.text1,
    this.text2,
    this.id,
  }) {
    text = text ?? "Goods Transport Order";
    text1 = text1 ?? "Type: Order ";
    text2 = text2 ?? "Date Created : 15/4/2021";
    id = id ?? "";
  }

  String? text;

  String? text1;

  String? text2;

  String? id;
}
