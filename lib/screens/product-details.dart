import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 248, 248),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.red,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(194, 244, 67, 54),
                    blurRadius: 15,
                    offset: Offset(1, -1),
                  )
                ],
                image: DecorationImage(
                  image: AssetImage("./assets/jacket2.png"),
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.noRepeat,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: const Center(
                          child: Icon(Icons.arrow_back_rounded),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: const Center(
                          child: Icon(Icons.view_agenda_rounded),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Pink Blazer",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25.0),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Woman jackets",
                            style: TextStyle(
                                fontWeight: FontWeight.w200, fontSize: 11.0),
                          ),
                        ],
                      ),
                      const Text(
                        "\$250",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      )
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        color: const Color.fromARGB(255, 255, 248, 248),
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "SZMANLIZI Costume Homme Yellow Double Breasted Men Suits Tuxedo Groom Prom Wedding Blazer Terno Masculino Slim Fit Jacket Pant. Available in all sizes.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              fontSize: 13.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 1.5,
                          color: Colors.red,
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        elevation: 5,
                        backgroundColor:
                            const Color.fromARGB(151, 255, 230, 229),
                        onPressed: () {
                          // ignore: avoid_print
                          print("Items Added to cart");
                        },
                        child: const Icon(Icons.shopping_cart_outlined,
                            color: Color.fromARGB(181, 244, 67, 54)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
