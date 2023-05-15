import 'package:aviatourne/theme/colors/color_manager.dart';
import 'package:aviatourne/widgets/flight_service_card.dart';
import 'package:flutter/material.dart';

class FlightServicesScreen extends StatelessWidget {
  const FlightServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorManager = ColorManager();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'ОКАЗАННЫЕ УСЛУГИ',
            style:
                TextStyle(color: colorManager.theme.description, fontSize: 11),
          ),
          const SizedBox(height: 22),
          const FlightServiceCard(),
          const SizedBox(height: 10),
          const FlightServiceCard(),
          const SizedBox(height: 10),
          const FlightServiceCard(),
          const SizedBox(height: 10),
          const FlightServiceCard(),
          const SizedBox(height: 10),
          const FlightServiceCard(),
          const SizedBox(height: 10),
          const FlightServiceCard(),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: colorManager.theme.positiveBackgroundDark),
              ),
              child: Icon(
                Icons.add,
                color: colorManager.theme.positiveBackgroundDark,
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
