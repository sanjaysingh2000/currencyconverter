import 'package:flutter/material.dart';


class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
    _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        // color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(1),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Concurrency Converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //int to string => int.toString()
            //string to int => int.parse()
            Text(
              result.toString(),
              style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please Enter Amount in Usd',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: const Color.fromRGBO(0, 0, 0, 1),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text)*83.12;
                  });
                    
                  },
                  // style: ButtonStyle(
                  //   backgroundColor: 
                  //     const MaterialStatePropertyAll(Colors.blueAccent),
                  //   foregroundColor: 
                  //     const MaterialStatePropertyAll(Colors.white),
                  //   minimumSize:
                  //       const MaterialStatePropertyAll(
                  //         Size(double.infinity, 40)
                  //         ),
                  //   shape: MaterialStatePropertyAll(
                  //     RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(5))
                  //   )
                  // ),
                  // child: const Text('Convert')
              
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(345, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                  child: const Text('Convert')
                  ),
            ),
          ],
        ),
      ),
    );
  }

}
