import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ktshka5/models/car/car.dart';

class CarWidget extends StatelessWidget {
  final Car cars;
  final index;

  const CarWidget({super.key, required this.cars, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3,
        color: Color.fromARGB(243, 250, 157, 185),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          child: ListTile(
            title: Text(
              cars.car,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cars colour: ${cars.car_color}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  'Model: ${cars.car_model}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Container(
                  child: RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(
                      text: 'Price: ',
                      style: const TextStyle(color: Colors.black,
                      fontSize: 17,),
                      children: <InlineSpan>[
                        TextSpan(
                          text: cars.price.toString(),
                          style: const TextStyle(
                            color: Color.fromARGB(255, 138, 1, 49),
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        const WidgetSpan(
                          child: Icon(
                            Icons.attach_money,
                            color: Color.fromARGB(255, 0, 169, 96),
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(index.toString(),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 138, 1, 49),
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    )),
              ],
            ),
          ),
        ));
  }
}
