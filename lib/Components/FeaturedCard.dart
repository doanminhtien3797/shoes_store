import 'package:flutter/material.dart';
import 'package:shop_app_upd/Pages/Product/ProductDetails.dart';

class FeaturedCard extends StatelessWidget {
  final String id;
  final String name;
  final List colors;
  final String category;
  final String brand;
  final List images;
  final String image;
  final List sizes;
  final double price;
  final double oldPrice;
  final bool sale;
  final String description;
  FeaturedCard({this.id, this.images, this.colors, this.sizes, this.name, this.price, this.image, this.oldPrice, this.sale, this.description, this.category, this.brand});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 230,
      height: 190,
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            offset: Offset(0, 1),
            blurRadius: 1,
          ),
        ],
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>
          ProductDetails(id: id, name: name, sizes: sizes, colors: colors, price: price, images: images, description: description, brand: brand,category: category, isFavourite: false,)));
        },
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: <Widget>[
                Container(
                 margin: EdgeInsets.only(top: 20),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),

                // Align(
                //   alignment: Alignment.bottomCenter,
                //   child: Container(
                //       width: 230,
                //       height: 200,
                //       decoration: BoxDecoration(
                //         // Box decoration takes a gradient
                //         gradient: LinearGradient(
                //           // Where the linear gradient begins and ends
                //           begin: Alignment.bottomCenter,
                //           end: Alignment.topCenter,
                //           // Add one stop for each color. Stops should increase from 0 to 1
                //           colors: [
                //             // Colors are easy thanks to Flutter's Colors class.
                //             // Colors.black.withOpacity(0.8),
                //             // Colors.black.withOpacity(0.7),
                //             // Colors.black.withOpacity(0.6),
                //             // Colors.black.withOpacity(0.6),
                //             // Colors.black.withOpacity(0.4),
                //             // Colors.black.withOpacity(0.15),
                //             // Colors.black.withOpacity(0.1),
                //             // Colors.black.withOpacity(0.05),
                //             // Colors.black.withOpacity(0.025),
                //           ],
                //         ),
                //       ),
                //   ),
                // ),

                Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: RichText(
                                maxLines: 3,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: '$name \n',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                  sale
                                      ? TextSpan(
                                          text: '\$${price.toString()} \t\t',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black))
                                      : TextSpan(
                                          text: '\$${price.toString()} \t\t',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                  sale
                                      ? TextSpan(
                                          text: '\$${oldPrice.toString()} \t\t',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              decorationColor: Colors.red,
                                              decorationThickness: 3.0,
                                              color: Colors.black))
                                      : TextSpan(
                                          text: "",
                                          style:
                                              TextStyle(color: Colors.black)),
                                ]))),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FeaturedCardForGrid extends StatelessWidget {
  final String id;
  final String name;
  final List colors;
  final String category;
  final String brand;
  final List images;
  final String image;
  final List sizes;
  final double price;
  final double oldPrice;
  final bool sale;
  final String description;
  FeaturedCardForGrid({this.id, this.images, this.colors, this.sizes, this.name, this.price, this.image, this.oldPrice, this.sale, this.description, this.category, this.brand});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, bottom: 15),
      padding: EdgeInsets.only(bottom: 10),
      width: 230,
      height: 190,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            offset: Offset(0, 1),
            blurRadius: 1,
          ),
        ],
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>
              ProductDetails(id: id, name: name, sizes: sizes, colors: colors, price: price, images: images, description: description, brand: brand,category: category, isFavourite: false,)));
        },
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),

                // Align(
                //   alignment: Alignment.bottomCenter,
                //   child: Container(
                //       width: 230,
                //       height: 200,
                //       decoration: BoxDecoration(
                //         // Box decoration takes a gradient
                //         gradient: LinearGradient(
                //           // Where the linear gradient begins and ends
                //           begin: Alignment.bottomCenter,
                //           end: Alignment.topCenter,
                //           // Add one stop for each color. Stops should increase from 0 to 1
                //           colors: [
                //             // Colors are easy thanks to Flutter's Colors class.
                //             // Colors.black.withOpacity(0.8),
                //             // Colors.black.withOpacity(0.7),
                //             // Colors.black.withOpacity(0.6),
                //             // Colors.black.withOpacity(0.6),
                //             // Colors.black.withOpacity(0.4),
                //             // Colors.black.withOpacity(0.15),
                //             // Colors.black.withOpacity(0.1),
                //             // Colors.black.withOpacity(0.05),
                //             // Colors.black.withOpacity(0.025),
                //           ],
                //         ),
                //       ),
                //   ),
                // ),

                Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: RichText(
                              maxLines: 3,
                                text: TextSpan(children: [
                              TextSpan(text: '$name \n', style: TextStyle(fontSize: 16, color: Colors.black)),
                              sale ? TextSpan(text: '\$${price.toString()} \t\t', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)) : TextSpan(text: '\$${price.toString()} \t\t', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
                              sale ? TextSpan(text: '\$${oldPrice.toString()} \t\t', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, decoration: TextDecoration.lineThrough, decorationColor: Colors.red, decorationThickness: 3.0, color: Colors.black)) : TextSpan(text: "", style: TextStyle(color: Colors.black)),
                            ]))
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}