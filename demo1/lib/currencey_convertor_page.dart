import 'package:flutter/material.dart';

class CurrenceyConvertorPage extends StatefulWidget {
  const CurrenceyConvertorPage({super.key});
  @override
  State<CurrenceyConvertorPage> createState() => _CurrenceyConvertorPage();
}

class _CurrenceyConvertorPage extends State<CurrenceyConvertorPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
          color: Colors.white,
          width: 1,
          strokeAlign: BorderSide.strokeAlignInside),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 166, 80, 223),
          elevation: 50,
          title: const Text("Currency Convertor "),
          titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          centerTitle: true,
        ),
        backgroundColor: const Color.fromARGB(255, 166, 80, 223),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "INR $result",
                style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Enter The Currency In Dollars",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.monetization_on,
                      size: 40,
                    ),
                    prefixIconColor: Color.fromARGB(255, 2, 219, 2),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    signed: true,
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      result =
                          (double.parse(textEditingController.text) * 84.13);
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    elevation: 20,
                    shadowColor: const Color.fromARGB(255, 0, 0, 0),
                    minimumSize: const Size(double.infinity, 50),
                    side: const BorderSide(color: Colors.white),
                  ),
                  child: const Text("Convert"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
