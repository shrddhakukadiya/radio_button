import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
   var option;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10,left: 10),
               width: double.infinity,
              child: Text("Qu:1.Which is the diamond City???"),
             
            ),
            Container(
              margin: EdgeInsets.only(right: 10,left: 10),
              child: Row(
                children: [
                  Text("A."),
                  Radio(
                      value: "Surat",
                      groupValue: option,
                      onChanged: (Object? value) {
                        setState(() {
                          option=value;
                        });
                      }),
                  Text("Surat"),
            
                
                ],
              ),
            ),
              Container(
                margin: EdgeInsets.only(right: 10,left: 10),
                child: Row(
                children: [
                  Text("B."),
                  Radio(
                      value: "Baroda",
                      groupValue: option,
                      onChanged: (Object? value) {
                          setState(() {
                          option=value;
                        });
                      }),
                  Text("Baroda"),
                ],
            ),
              ),
            Container(
              margin: EdgeInsets.only(right: 10,left: 10),
              child: Row(
                children: [
                  Text("C."),
                  Radio(
                      value: "Vapi",
                      groupValue: option,
                      onChanged: (Object? value) {
                        setState(() {
                          option=value;
                        });
                      }),
                  Text("Vapi"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
