import '../../../core/app_export.dart';

/// This class is used in the [formlist_item_widget] screen.
class FormlistItemModel {
  FormlistItemModel({
    this.gapAffidavitText,
    this.typeAffidavitText,
    this.dateCreatedText,
    this.id,
  }) {
    gapAffidavitText = gapAffidavitText ?? "Gap Affidavit - Self Decleration";
    typeAffidavitText = typeAffidavitText ?? "Type: Affidavit";
    dateCreatedText = dateCreatedText ?? "Date Created : 09/10/2022";
    id = id ?? "";
  }

  String? gapAffidavitText;

  String? typeAffidavitText;

  String? dateCreatedText;

  String? id;
}
