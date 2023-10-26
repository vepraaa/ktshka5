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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
          isThreeLine: true,
          title: Text(cars.car),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cars colour: ${cars.car_color}',
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                'Model: ${cars.car_model}',
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Price: ',
                  style: const TextStyle(color: Colors.black),
                  children: <InlineSpan>[
                    TextSpan(
                      text: cars.price.toString(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 53, 73, 251),
                        fontWeight: FontWeight.w400,
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
            ],
          ),
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(index.toString(),
                  style: const TextStyle(color:  Color.fromARGB(255, 247, 27, 104), fontSize: 35)),
            ],
          ),
      )   
    );
  }
}
