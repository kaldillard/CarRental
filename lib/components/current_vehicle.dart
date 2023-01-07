import 'package:car_rental/components/info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

// ignore: must_be_immutable
class CurrentVehicle extends StatelessWidget {
  String carName;
  String usage;
  int rentalPlan;
  int payment;
  double battery;
  String carImage;
  CurrentVehicle(
      {super.key,
      required this.carName,
      required this.usage,
      required this.rentalPlan,
      required this.payment,
      required this.battery,
      required this.carImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 450,
      decoration: BoxDecoration(
          color: const Color(0XFF222025),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Rented Vehicles",
                      style: TextStyle(
                        color: Color(0XFFafacb0),
                      )),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    carName,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
            ]),
            Image(image: AssetImage(carImage)),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoCard(
                      label: "Usage Time",
                      text: usage,
                    ),
                    InfoCard(
                      label: "Rental Plan",
                      text: "\$$rentalPlan /hour",
                    ),
                    InfoCard(
                      label: "Payment",
                      text: "\$$payment",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        height: 50,
                        width: 250,
                        child: FAProgressBar(
                          currentValue: battery,
                          maxValue: 100,
                          backgroundColor: const Color(0XFF2d2b30),
                          progressColor: const Color(0XFFd6ff45),
                          displayText: "% Battery",
                          displayTextStyle: const TextStyle(
                              color: Color(0XFF222025),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                    Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0XFF2d2b30),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [Icon(Icons.location_pin)],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
