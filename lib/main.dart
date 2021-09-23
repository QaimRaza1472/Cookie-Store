import 'package:cookie_store/cookie_page.dart';
import 'package:flutter/material.dart';
import 'bottom_bar.dart';

void main (){




  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon:Icon(Icons.arrow_back_ios,
            color: Color(0xFF545D68),
          ),
            onPressed: (){},
        ),
        title: Text("Pickup",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF545D68),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.notifications,
                color: Color(0xFF545D68),
              ),
              onPressed: (){}
              ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20),
        children: [
          SizedBox(height: 15,),
          Text('Categories',
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 15,),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xFFC88D67),
            unselectedLabelColor: Color(0xFFCDCDCD),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45),
            tabs: [
              Tab(
                child: Text('Cookies',style: TextStyle(fontSize: 21,),),
              ),
              Tab(
                child: Text('Cookie Cake',style: TextStyle(fontSize: 21,),),
              ),
              Tab(
                child: Text('Ice Cream',style: TextStyle(fontSize: 21,),),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child:TabBarView(
              controller: _tabController,
              children: [
                Cookie_Page(),
                Cookie_Page(),
                Cookie_Page(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar:BottomBar(),
    );
  }
}
