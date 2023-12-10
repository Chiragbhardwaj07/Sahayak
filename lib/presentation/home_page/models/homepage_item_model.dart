import '../../../core/app_export.dart';

/// This class is used in the [homepage_item_widget] screen.
class HomepageItemModel {
  HomepageItemModel({this.id}) {
    id = id ?? "";
  }

  String? id;
}
