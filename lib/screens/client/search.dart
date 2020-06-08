import 'package:delivery_app/screens/client/home.dart';
import 'package:delivery_app/screens/client/orders.dart';
import 'package:delivery_app/screens/client/product_detail.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {

  @override
  _SearchState createState() => _SearchState();

}
class _SearchState extends State<Search> {
  
  @override
  void initState() {
    //TODO
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      if(index == 0){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => Home()),
        );
      }

      else if(index == 3){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => Orders()),
        );
      }
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(156, 174, 202, 1),
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        textTheme: Theme
          .of(context)
          .textTheme
          .copyWith(caption: new TextStyle(color: Colors.white))),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  'Home',
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text(
                  'Search',
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                title: Text(
                  'Appointments',
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_shipping),
                title: Text(
                  'Orders',
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text(
                  'Notifications',
                )),
            BottomNavigationBarItem(
            icon: Icon(Icons.email),
            title: Text(
              'Contact Us',
            ))
          ],
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          fixedColor: Color.fromRGBO(3, 119, 155, 1),
          onTap: _onItemTapped,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/images/background.jpg", fit: BoxFit.cover),
          ),

          Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image.asset("assets/images/small_logo.png"),
                    Center(
                      child: Text("SEARCH", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),

              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Type the word in the product",
                      hintStyle: TextStyle(color: Color.fromRGBO(198, 216, 223, 1),),
                      border: OutlineInputBorder(
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.only(left: 70, right: 70,),
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: searchResult,
                  ),
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }

  Widget searchResult(BuildContext context, int index){
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ProductDetail()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: MediaQuery.of(context).size.height/3,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 3,color: Color.fromRGBO(192, 212, 220, 1)),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                child: Image.asset("assets/product.jpg", fit: BoxFit.cover)
              ),
            ),

            Expanded(
              flex: 1,
              child: Container(
                child: Text("Product Name", style: TextStyle(fontSize: 16),),
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
              children: <Widget>[
                Expanded(
                  flex: 8,
                  child: Container()
                ),
                Expanded(
                  flex: 2,
                    child: Icon(Icons.share, color: Color.fromRGBO(150, 171, 182, 1),),
                  ),

                  Expanded(
                    flex: 3,
                    child: Icon(Icons.shopping_cart, color: Color.fromRGBO(150, 171, 182, 1),),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}