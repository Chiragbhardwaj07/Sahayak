/// This class is used in the [homepage_item_widget] screen.
class TemplateItemModel {
  TemplateItemModel({
    this.id,
    required this.docType,
    required this.DocDesc,
    required this.img,
  }) {
    docType = docType ?? "Gap Affidavit - Self Decleration";
    DocDesc = DocDesc ?? "Type: Affidavit";
    img = img ?? "Date Created : 09/10/2022";
    id = id ?? "";
  }

  String docType;

  String DocDesc;

  String img;

  String? id;
}
