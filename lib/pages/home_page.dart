import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../components/current_vehicle.dart';
import '../components/my_header.dart';
import '../components/my_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.selected,
  });

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        minHeight: 125,
        color: const Color(0XFF0e0b10),
        panel: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 50,
                  height: 8,
                  decoration: BoxDecoration(
                      color: const Color(0XFFafacb0),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Nearby Rental Place",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: selected == true
                              ? const Color(0XFFd6ff45)
                              : const Color(0XFF222025),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "All",
                            style: TextStyle(
                                color: Color(0XFF0e0b10),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    MyTab(
                        selected: false,
                        icon: Icons.car_rental_outlined,
                        label: "Cars"),
                    MyTab(
                        selected: false,
                        icon: Icons.motorcycle_outlined,
                        label: "Motorcycle"),
                    MyTab(
                        selected: false,
                        icon: Icons.pedal_bike_outlined,
                        label: "Bicycle"),
                    MyTab(
                        selected: false,
                        icon: Icons.bike_scooter_outlined,
                        label: "Scooter"),
                  ],
                ),
              )
            ],
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.clamp,
              colors: [
                Color(0XFF0e0b10),
                Color(0XFF0e0b10),
                Color.fromARGB(255, 109, 129, 36),
              ],
            ),
          ),
          child: SafeArea(
              minimum: const EdgeInsets.all(10),
              child: Column(children: [
                MyHeader(
                  name: "B1 Development",
                ),
                const SizedBox(
                  height: 20,
                ),
                CurrentVehicle(
                  carName: 'BMW i3 EV',
                  usage: '3h 14m',
                  rentalPlan: 20,
                  payment: 80,
                  battery: 80,
                  carImage: "images/ev_bmw.png",
                )
              ])),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
              backgroundColor: Color(0XFF222025)),
          BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
              backgroundColor: Color(0XFF222025)),
          BottomNavigationBarItem(
              label: "History",
              icon: Icon(Icons.battery_charging_full),
              backgroundColor: Color(0XFF222025)),
          BottomNavigationBarItem(
              label: "Account",
              icon: Icon(Icons.person),
              backgroundColor: Color(0XFF222025)),
        ],
        selectedItemColor: const Color(0XFFd6ff45),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        unselectedItemColor: const Color(0XFFafacb0),
        showUnselectedLabels: true,
      ),
    );
  }
}
