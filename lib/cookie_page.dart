import 'package:cookie_store/cookie_detail.dart';
import 'package:flutter/material.dart';

class Cookie_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: [
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width-30,
            height: MediaQuery.of(context).size.height-50,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              childAspectRatio: 0.8,
              children: [
                _buildCard('Cookie mint', '\$3.99', 'assets/cookie_mint2.png', false, false, context,
                    'It is a chocolate mint cake cookie.It is a double chocolate cake cookie'),
                _buildCard('Simple Cookie mint', '\$3.99', 'assets/cookie_mint3.png', true, false, context,
                    'It is a simple chocolate cake cookie .In this cookie there is a double Cake and has a very good taste'),
                _buildCard('Choco Cookie', '\$3.99', 'assets/cookie_mint.png', false, true, context,
                    'It is chocolate Cookie and has a smile amount of chocolate in it'),
                _buildCard('Chocolate Cookie', '\$3.99', 'assets/cookie_choco.png', false, false, context,
                    'It is a full chocolate cookie and has good taste of chocolate and milk'),
                _buildCard('Cookie mint', '\$3.99', 'assets/cookie_cream.png', false, false, context,'very good Biscuit'),
                _buildCard('Cookie mint', '\$3.99', 'assets/choco_classic.png', false, false, context,'very good Biscuit'),
              ],
            ),
          ),
        ],
      ),
    );
  }
  _buildCard(String name, String price, String imgPath, bool added, bool isFavorite, context,String Description){
    return Padding(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context)=>CookieDetail(
                assetPath: imgPath,
                cookiePrice: price,
                cookieName: name,
                cookieDescription: Description,
              ),
              ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color:Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
            color:Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                  padding:EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isFavorite ? Icon(Icons.favorite,color: Color(0xFFEF7532),):
                      Icon(Icons.favorite_border,color: Color(0xFFEF7532),),
                  ],
                ),
              ),
              Hero(
                tag: imgPath,
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    image:DecorationImage(
                      image: AssetImage(
                        imgPath,
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 7,),
              Text(price,
                style: TextStyle(
                  color: Color(0xFFCC8053),
                  fontSize:14,
                ),
              ),
              Text(name,
                style: TextStyle(
                  color: Color(0xFF575E67),
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  color: Color(0xFFEBEBEB),
                  height: 1,
                ),
              ),
              Padding(
                  padding:EdgeInsets.only(left: 5,right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if(!added)...[
                      Icon(Icons.shopping_basket,
                      color: Color(0xFFD17E50),
                        size: 16,
                      ),
                      Text('Add to cart',
                        style: TextStyle(
                          color: Color(0xFFD1E50),
                          fontSize: 16,
                        ),
                      ),
                    ],
                    if(added)...[
                      Icon(
                        Icons.remove_circle_outline,
                        color: Color(0xFFD1E50),
                        //size: 16,
                      ),
                      Text('3',
                        style: TextStyle(
                          color: Color(0xFFD17E50),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Icon(Icons.add_circle_outline,
                        color: Color(0xFFD17E50),
                      ),
                      ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
