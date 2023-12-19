import 'package:flutter/material.dart';
import 'package:sahayak/core/app_export.dart';
import 'package:sahayak/presentation/expert/homepage_expert/models/pending_item_model.dart';
import 'package:sahayak/presentation/expert/homepage_expert/provider/expert_homepage_provider.dart';
import 'package:sahayak/presentation/expert/homepage_expert/widgets/pending_widget.dart';

class Expert_Homepage extends StatefulWidget {
  const Expert_Homepage({super.key});

  @override
  State<Expert_Homepage> createState() => _Expert_HomepageState();
}

class _Expert_HomepageState extends State<Expert_Homepage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
              radius: 8, child: Image.asset('assets/images/one.jpeg')),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              elevation: 3,
              child: Container(
                decoration: BoxDecoration(
                  // color: Color(0xffEEF6F7),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TabBar(
                    labelColor: Colors.white,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.deepPurple,
                    ),
                    controller: tabController,
                    indicatorSize:
                        TabBarIndicatorSize.tab, // Set indicator size to label

                    labelPadding: EdgeInsets.symmetric(horizontal: 20),
                    tabs: [
                      //code for pending
                      Tab(
                        child: Text(
                          "Pending",
                          style: TextStyle(),
                        ),
                      ),
                      //code for reviewed
                      Tab(
                        child: Text(
                          "Reviewed",
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              SizedBox(
                height: 900,
                child: Consumer<ExpertHomePageProvider>(
                  builder: (context, provider, child) {
                    return ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: provider.ExpertChatModelObj.pendinglist.length,
                      itemBuilder: (context, index) {
                        PendingItemModel model =
                            provider.ExpertChatModelObj.pendinglist[index];
                        return PendingItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              //code for tab 2
              SizedBox(
                height: 900,
                child: Consumer<ExpertHomePageProvider>(
                  builder: (context, provider, child) {
                    return ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount:
                          provider.ExpertChatModelObj.reviewedlist.length,
                      itemBuilder: (context, index) {
                        PendingItemModel model =
                            provider.ExpertChatModelObj.reviewedlist[index];
                        return PendingItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
