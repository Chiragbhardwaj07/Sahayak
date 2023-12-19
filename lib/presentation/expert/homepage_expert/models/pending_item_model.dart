import '../../../../core/app_export.dart';

/// This class is used in the [Pending_item_widget] screen.
class PendingItemModel {
  PendingItemModel({
    required this.img,
    required this.client_name,
    required this.time,
    this.id,
  }) {
    img = img ?? "Gap Affidavit - Self Decleration";
    client_name = client_name ?? "Type: Affidavit";
    time = time ?? "Date Created : 09/10/2022";
    id = id ?? "";
  }

  String img;

  String client_name;

  String time;

  String? id;
}
