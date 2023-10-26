import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ktshka5/models/car/car.dart';
import 'package:ktshka5/models/car_data/car_data.dart';
import 'package:ktshka5/models/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Dio client = Dio();
  String url = 'https://myfakeapi.com/api/cars';
  List<Car> lcar = [];

  void lGetCar() async {
    Response response = await client.get(url);
    lcar = CarData.fromJson(response.data).cars;
    setState(() {});
  }

  @override
  void initState() {
    lGetCar();
    super.initState();
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: lcar.length,
        itemBuilder: (context, index) {
          return CarWidget(cars: lcar[index], index: index + 1);
        },
      ),
    );
  }
}
