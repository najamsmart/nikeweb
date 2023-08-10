import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          BackgroundWidget(width),
          shoeWidget(width),
          NikeGreyLogoWidget(width, height),
          Positioned(
            right: width * 0.15,
            bottom: height*0.18,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

              ],
            ),
           ),
           Positioned(
            height: kToolbarHeight,
            width: width,
            child: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width*0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/images/nike_logo.png",
                        width: 80,
                        color: Colors.white,
                        ),
                        Text("New Arrivals",
                        ),
                        Text("Men",
                        ),
                        Text("Women",
                        ),
                        Text("Boys",
                        ),
                        Text("Girl",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width*0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(Icons.search,color: Colors.black,),
                         Icon(Icons.shopping_cart,color: Colors.black,),
                          Icon(Icons.menu,color: Colors.black,)
                      ],
                    ),
                  )
                ],
              ),
             ),

           )
        ],
      ),
    );
  }

  Positioned NikeGreyLogoWidget(double width, double height) {
    return Positioned(
          right: width * 0.06,
          top: height*0.18,
          child: Image.asset("assets/images/nike_logo_grey.png",height: 200,),
        );
  }

  Positioned shoeWidget(double width) {
    return Positioned(right: width*0.15,
         child: Image.asset("assets/images/shoe.png",
          fit: BoxFit.cover,
          alignment: Alignment.centerLeft,),
        );
  }

  Row BackgroundWidget(double width) {
    return Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child:Stack(
               fit: StackFit.expand,
               children: [
                Image.asset("assets/images/background.jpg",
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
                ),
                Container(color: Color.fromRGBO(0, 105, 233,0.8),)
               ],
            ),
            ),
            Container(
              width: width*0.3,
              color: Colors.white,
            )
          ],
        );
  }
}
