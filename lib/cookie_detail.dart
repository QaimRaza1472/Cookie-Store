import 'package:flutter/material.dart';
import 'bottom_bar.dart';

class CookieDetail extends StatelessWidget {
  final assetPath;
  final cookiePrice;
  final cookieName;
  final cookieDescription;

  CookieDetail({this.assetPath,this.cookieName,this.cookiePrice,this.cookieDescription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon:Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF545D68),
          ),
          onPressed: (){
            Navigator.pop(context);
          },
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
        children: [
          SizedBox(height: 15,),
          Padding(
              padding: EdgeInsets.only(left: 20,),
            child: Text(
              'Cookie',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF17532),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
              height: 150,
              width: 100,
              fit: BoxFit.contain,),
            ),
            SizedBox(height: 15,),
          Center(
            child:Text(cookiePrice,
            style: TextStyle(
              color: Color(0xFFF17532),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child:Text(cookieName,
              style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF575E67),
            ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width -50,
              child: Text(
                cookieDescription,
                style: TextStyle(
                fontSize: 16,
                color: Color(0xFFB4B8B9),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width -70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFFF17532),
              ),
              child: Center(
                child: Text('Add to cart',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
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
