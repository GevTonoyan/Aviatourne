import 'dart:math';

import 'package:aviatourne/theme/colors/color_manager.dart';
import 'package:aviatourne/ui/airline_page/view_models/airline_view_model.dart';
import 'package:aviatourne/ui/flight_info_screen/views/flight_info_screen.dart';
import 'package:aviatourne/ui/flight_services_screen/views/flight_services_screen.dart';
import 'package:aviatourne/widgets/dropdown_card.dart';
import 'package:aviatourne/widgets/postive_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class AirlinePage extends StatefulWidget {
  const AirlinePage({Key? key}) : super(key: key);

  @override
  State<AirlinePage> createState() => _AirlinePageState();
}

class _AirlinePageState extends State<AirlinePage> {
  late final viewModel = Provider.of<AirlineViewModel>(context);

  @override
  Widget build(BuildContext context) {
    final colorManager = ColorManager();

    return SafeArea(
      child: Scaffold(
        backgroundColor: colorManager.theme.appWhite,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'КОМПАНИЯ',
                          style: TextStyle(
                              color: colorManager.theme.description,
                              fontSize: 10),
                        ),
                        const SizedBox(height: 2),
                        const DropDownCard(label: '6R'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'РЕЙС',
                          style: TextStyle(
                              color: colorManager.theme.description,
                              fontSize: 10),
                        ),
                        const SizedBox(height: 2),
                        const DropDownCard(label: '533'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'БОРТ',
                          style: TextStyle(
                              color: colorManager.theme.description,
                              fontSize: 10),
                        ),
                        const SizedBox(height: 2),
                        const DropDownCard(label: 'EIFCH')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: colorManager.theme.positiveBackgroundDark,
              height: 31,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: Icon(
                      Icons.airplanemode_on_outlined,
                      size: 16.0,
                      color: colorManager.theme.appWhite,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'DME – AER – DME',
                    style: TextStyle(
                      color: colorManager.theme.appWhite,
                      fontSize: 12.0,
                    ),
                  ),
                  const Spacer(),
                  Icon(Icons.people_alt_rounded,
                      size: 16.0, color: colorManager.theme.appWhite),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    '180',
                    style: TextStyle(
                      color: colorManager.theme.appWhite,
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  SvgPicture.asset('assets/images/business_seat.svg'),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    '3',
                    style: TextStyle(
                      color: colorManager.theme.appWhite,
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            IntrinsicHeight(
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/arrival_plane.svg'),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ПРИЛЁТ',
                                  style: TextStyle(
                                      color: colorManager.theme.description,
                                      fontSize: 11),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Рейс',
                                          style: TextStyle(
                                              color: colorManager
                                                  .theme.informationText,
                                              fontSize: 11),
                                        ),
                                        Text(
                                          '533',
                                          style: TextStyle(
                                              color:
                                                  colorManager.theme.appBlack,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                    const SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Время',
                                          style: TextStyle(
                                              color: colorManager
                                                  .theme.informationText,
                                              fontSize: 11),
                                        ),
                                        Text(
                                          '14:20',
                                          style: TextStyle(
                                              color:
                                                  colorManager.theme.appBlack,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: colorManager.theme.divider,
                      width: 1,
                    ),
                    Expanded(
                        child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/departure_plane.svg'),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ВЫЛЕТ',
                                style: TextStyle(
                                    color: colorManager.theme.description,
                                    fontSize: 11),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Рейс',
                                        style: TextStyle(
                                            color: colorManager
                                                .theme.informationText,
                                            fontSize: 11),
                                      ),
                                      Text(
                                        '533',
                                        style: TextStyle(
                                            color: colorManager.theme.appBlack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Время',
                                        style: TextStyle(
                                            color: colorManager
                                                .theme.informationText,
                                            fontSize: 11),
                                      ),
                                      Text(
                                        '14:20',
                                        style: TextStyle(
                                            color: colorManager.theme.appBlack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
            Container(height: 10, color: Colors.grey.shade200),
            Expanded(
              child: SingleChildScrollView(
                child: viewModel.flightBody == FlightBody.flightInfo
                    ? const FlightInfoScreen()
                    : const FlightServicesScreen(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PositiveButton(
                label: viewModel.flightBody == FlightBody.flightInfo
                    ? 'Далее'
                    : 'Загрузить',
                backgroundColor: colorManager.theme.positiveBackgroundDark,
                onPressed: () {
                  viewModel.flightBody = FlightBody.flightServices;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Расписание',
                style: TextStyle(
                  color: colorManager.theme.positiveBackgroundDark,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
