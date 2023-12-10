import '../../../core/app_export.dart';
import 'rentagreementlist_item_model.dart';
import 'formlist_item_model.dart';
import 'goodstransportorder_item_model.dart';

class DocumentsPageModel {
  List<RentagreementlistItemModel> rentagreementlistItemList = [
    RentagreementlistItemModel(
        agreementText: "House Rent Agreement - The Rent Control Act",
        agreementType: "Type: Agreement ",
        dateCreated: "Date Created : 10/10/2023"),
    RentagreementlistItemModel(
        agreementText: "College Anti Ragging Affidavit",
        agreementType: "Type: Affidavit ",
        dateCreated: "Date Created : 09/10/2022")
  ];

  List<FormlistItemModel> formlistItemList = [
    FormlistItemModel(
        gapAffidavitText: "Gap Affidavit - Self Decleration",
        typeAffidavitText: "Type: Affidavit",
        dateCreatedText: "Date Created : 09/10/2022"),
    FormlistItemModel(
        gapAffidavitText: "Surender Singh - Bail Application",
        typeAffidavitText: "Type: Petition ",
        dateCreatedText: "Date Created : 15/4/2021")
  ];

  List<GoodstransportorderItemModel> goodstransportorderItemList = [
    GoodstransportorderItemModel(
        text: "Goods Transport Order",
        text1: "Type: Order ",
        text2: "Date Created : 15/4/2021"),
    GoodstransportorderItemModel(
        text: "4BHK Property Sale Document",
        text1: "Type: Document",
        text2: "Date Created : 09/10/2022")
  ];
}
