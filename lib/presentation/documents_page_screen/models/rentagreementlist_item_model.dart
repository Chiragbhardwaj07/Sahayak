import '../../../core/app_export.dart';

/// This class is used in the [rentagreementlist_item_widget] screen.
class RentagreementlistItemModel {
  RentagreementlistItemModel({
    this.agreementText,
    this.agreementType,
    this.dateCreated,
    this.id,
  }) {
    agreementText =
        agreementText ?? "House Rent Agreement - The Rent Control Act";
    agreementType = agreementType ?? "Type: Agreement ";
    dateCreated = dateCreated ?? "Date Created : 10/10/2023";
    id = id ?? "";
  }

  String? agreementText;

  String? agreementType;

  String? dateCreated;

  String? id;
}
