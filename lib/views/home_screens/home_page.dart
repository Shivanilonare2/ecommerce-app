import 'package:ecommerce_app/utils/constant_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final TextEditingController searchController = TextEditingController();
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController( vsync: this, length: 6);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.sizeOf(context).height * 0.07,
              horizontal: MediaQuery.sizeOf(context).width * 0.05),
          child: Column(
            children: [
              searchCard(context),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              buildRow(),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              pageViewBuilder(context),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),

              Stack(
                children: [
                  Expanded(
                    child: TabBar(
                      labelColor: AppColors.kDarkColor,
                      indicatorColor: AppColors.kItemColor,
                      isScrollable: true,
                      controller: tabController,
                      unselectedLabelColor: AppColors.kHintTextColor,
                      tabs: const [
                        Tab(text: "All", ),
                        Tab(text: "Fashion",),
                        Tab(text: "Sports"),
                        Tab(text: "Electronics"),
                        Tab(text: "Lifestyle"),
                        Tab(text: "Kids"),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height*0.7,
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    Center(child: Text("All")),
                    Center(child: Text("Fashion")),
                    Center(child: Text("Sports")),
                    Center(child: Text("Electronics")),
                    Center(child: Text("Lifestyle")),
                    Center(child: Text("Kids")),
                  ],
                  //controller: _tabController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //========================== build row ==========================================
  Widget buildRow() {
    return const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Item",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    color: Color(0xffeb3461),
                    fontSize: 14,
                  ),
                ),
              ],
            );
  }

  //========================== search card ==========================================
  Widget searchCard(BuildContext context) {
    return Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width * 0.05),
                  hintText: "Search",
                  suffixIcon: const Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      )),
                ),
              ),
            );
  }

  //========================== page view builder ==========================================
  Widget pageViewBuilder(BuildContext context) {
    return SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.2,
              child: PageView.builder(
                  padEnds: false,
                  controller: PageController(initialPage: 0, viewportFraction: 0.8),
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/twenty_percent_off.jpg",
                                  ),
                                  fit: BoxFit.fill)),
                        ));
                  }),
            );
  }
}
