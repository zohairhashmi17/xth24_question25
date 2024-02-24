import 'package:flutter/material.dart';
import 'package:xth24_question25/models/shopping_cart.dart';

class ShoppingCartPage extends StatelessWidget {
  final ShoppingCart shoppingCart; // Assuming you have the ShoppingCart data

  const ShoppingCartPage({required Key key, required this.shoppingCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cartItemsSection(),
              const SizedBox(height: 12,),
              recommendedProductsSection(),
              const SizedBox(height: 12,),
              totalItems(),
              const SizedBox(height: 12,),
              checkoutButton()
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget cartItemsSection () {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(),
            const Text(
              'Shopping Cart',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.upload_file,
              size: 20,
              color: Colors.deepPurpleAccent.withOpacity(0.5),
            )
          ],
        ),
        const SizedBox(height: 12,),
        shoppingCart.data != null && shoppingCart.data?.cart != null
            ? ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: shoppingCart.data?.cart?.products?.length,
          itemBuilder: (context, index) {
            CartProduct? product =
            shoppingCart.data?.cart?.products?[index];
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      Image.network(product?.thumb ?? ''),
                      const SizedBox(width: 12,),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              product?.manufacturerName ?? '',
                              style: TextStyle(
                                  color: Colors.grey.withOpacity(0.5),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            const SizedBox(height: 12,),
                            Flexible(
                                child: Text(product?.name ?? '',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),)
                            ),
                            const SizedBox(height: 20,),
                            Text(product?.priceFormatted ?? '',
                              style: TextStyle(
                                  color: Colors.grey.withOpacity(0.5),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  decoration: TextDecoration.lineThrough
                              ),),
                            const SizedBox(height: 20,),
                            Text(
                              product?.special?[index].priceFormated ?? '',
                              style: const TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12,),
                      Column(
                        children: [
                          Icon(
                            Icons.delete,
                            size: 20,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          const SizedBox(height: 40,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Colors.grey.withOpacity(0.5))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  child: const Text(
                                    "-",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Text(product?.quantity ?? ''),
                                GestureDetector(
                                  child: const Text(
                                    "+",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 1,
                ),
              ],
            );
          },
        ) : Container(),
      ],
    );
  }

  Widget recommendedProductsSection () {
    return Column(
      children: [
        const Text(
          'Products you may like',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        shoppingCart.data != null &&
            shoppingCart.data?.recommendedProducts != null &&
            shoppingCart.data?.recommendedProducts?.products != null
            ? GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount:
          shoppingCart.data?.recommendedProducts?.products?.length,
          itemBuilder: (context, index) {
            RecommendedProductsProduct? product =
            shoppingCart.data?.recommendedProducts?.products?[index];
            return GridTile(
              child: GestureDetector(
                onTap: () {
                  // Handle product tap
                },
                child: Card(
                  elevation: 2.0,
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(product?.thumb ?? ''),
                      ),
                      const SizedBox(height: 24,),
                      Expanded(
                        child: Text(
                          product?.name ?? '',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 12,),
                      Text(product?.priceFormated ?? '',
                        style: const TextStyle(
                            fontSize: 20,
                          fontWeight: FontWeight.w800
                      ),
                      ),
                      const SizedBox(height: 36,),
                      Text(
                          product?.hasOption == true ? "Pick an option" : "",
                        style: TextStyle(
                          color: Colors.deepPurpleAccent.withOpacity(0.5),
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ) : Container()
      ],
    );
  }

  Widget totalItems () {
    return Text(
        "${shoppingCart.data?.cart?.products?.length} item(s) - ${shoppingCart.data?.cart?.totals?[0].value}"
    );
  }

  Widget checkoutButton () {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.black
      ),
      child: const Text(
        "Checkout",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
      ),
    );
  }

  Widget bottomNavigationBar () {
    return (
        BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_rounded),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.branding_watermark_rounded),
              label: 'Brands',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'My account',
            ),
          ],
          currentIndex: 3,
          onTap: (int index) {
          },
        )
    );
  }
}

