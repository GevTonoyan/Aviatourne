import 'package:aviatourne/theme/colors/color_manager.dart';
import 'package:flutter/material.dart';

class FlightServiceCard extends StatelessWidget {
  const FlightServiceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorManager = ColorManager();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: colorManager.theme.flightServiceCardBorder),
      ),
      child: Column(
        children: [
          Container(
            height: 21,
            width: double.maxFinite,
            padding: const EdgeInsets.only(right: 10),
            color: colorManager.theme.divider,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Gevorg',
                style: TextStyle(
                    color: colorManager.theme.description, fontSize: 11),
              ),
            ),
          ),
          Divider(
            color: colorManager.theme.flightServiceCardBorder,
            height: 1,
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Где?',
                                style: TextStyle(
                                  color: colorManager.theme.informationText,
                                  fontSize: 11,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'Регистрация',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: colorManager.theme.appBlack,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: colorManager.theme.description,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                VerticalDivider(
                  width: 1,
                  color: colorManager.theme.flightServiceCardBorder,
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Услуга',
                                style: TextStyle(
                                  color: colorManager.theme.informationText,
                                  fontSize: 11,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'Распечатка документов центральных',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: colorManager.theme.appBlack,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: colorManager.theme.description,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: colorManager.theme.flightServiceCardBorder,
            height: 1,
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Кол-во',
                          style: TextStyle(
                            color: colorManager.theme.informationText,
                            fontSize: 11,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          '0',
                          style: TextStyle(
                            color: colorManager.theme.appBlack,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                VerticalDivider(
                  width: 1,
                  color: colorManager.theme.flightServiceCardBorder,
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Цена',
                          style: TextStyle(
                            color: colorManager.theme.informationText,
                            fontSize: 11,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          '0',
                          style: TextStyle(
                            color: colorManager.theme.appBlack,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                VerticalDivider(
                  width: 1,
                  color: colorManager.theme.flightServiceCardBorder,
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: const Icon(Icons.close),
                    color: colorManager.theme.appRed,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
