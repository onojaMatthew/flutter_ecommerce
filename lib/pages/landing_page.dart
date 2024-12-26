import 'package:ecommerce/pages/home_page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(25.0),
                child: Image.asset(
                  "lib/images/logo.png",
                  height: 240,
                ),
              ),
              const SizedBox(height: 48,),

              const Text(
                "Just do it",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),

              const SizedBox(height: 48,),

              const Text(
                "Brand new sneakers and custom kicks made with premium quality",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48,),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(12.0)
                    ),
                    padding: const EdgeInsets.all(25),
                    child: const Center(
                      child: Text(
                        "Shop Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                    )
                ),
              )

            ],
          ),
        ),
      )
    );
  }
}
