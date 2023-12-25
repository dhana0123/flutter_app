import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() {
    return _CurrencyConverterMaterialPage();
  }
}

class _CurrencyConverterMaterialPage
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(410)));

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Curreny Converter",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromRGBO(135, 171, 143, 0.925),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "INR ${result.toString()}",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 55,
                  fontFamily: AutofillHints.creditCardName,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black, fontSize: 19),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  hintText: 'Please Enter the number',
                  hintStyle: TextStyle(color: Colors.black38),
                  prefixIcon: Icon(Icons.monetization_on, size: 31),
                  prefixIconColor: Colors.black,
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 81;
                    });
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    shape: const ContinuousRectangleBorder(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(32),
                          right: Radius.circular(32)),
                    ),
                    minimumSize: const Size(double.infinity, 0),
                    backgroundColor: Colors.black45,
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                  child: const Text("Convert")),
            )
          ],
        ),
      ),
    );
  }
}
