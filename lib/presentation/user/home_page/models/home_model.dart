import 'homepage_item_model.dart';
import '../../../../core/app_export.dart';

class HomeModel {
  List<HomepageItemModel> homepageItemList =
      List.generate(3, (index) => HomepageItemModel());
}
