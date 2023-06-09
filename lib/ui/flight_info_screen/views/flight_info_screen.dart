import 'package:aviatourne/theme/colors/color_manager.dart';
import 'package:aviatourne/widgets/dropdown_card.dart';
import 'package:flutter/material.dart';

class FlightInfoScreen extends StatelessWidget {
  const FlightInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorManager = ColorManager();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'АКТУАЛЬНЫЕ ДАННЫЕ',
            style:
                TextStyle(color: colorManager.theme.description, fontSize: 11),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Время вылета',
                style: TextStyle(
                  color: colorManager.theme.informationText,
                  fontSize: 14,
                ),
              ),
              InkWell(
                onTap: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    helpText: 'SELECT TIME',
                  );
                },
                child: Text(
                  '22:10',
                  style: TextStyle(
                      color: colorManager.theme.appBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Divider(
            height: 1,
            thickness: 1,
            color: colorManager.theme.divider,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Время регистрации',
                style: TextStyle(
                  color: colorManager.theme.informationText,
                  fontSize: 14,
                ),
              ),
              Text(
                'Указать',
                style: TextStyle(
                    color: colorManager.theme.positiveBackgroundDark,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Divider(
            height: 1,
            thickness: 1,
            color: colorManager.theme.divider,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Время board-а',
                style: TextStyle(
                  color: colorManager.theme.informationText,
                  fontSize: 14,
                ),
              ),
              Text(
                '14:52',
                style: TextStyle(
                    color: colorManager.theme.appBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Divider(
            height: 1,
            thickness: 1,
            color: colorManager.theme.divider,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Время прилёта',
                style: TextStyle(
                  color: colorManager.theme.informationText,
                  fontSize: 14,
                ),
              ),
              Text(
                '14:52',
                style: TextStyle(
                    color: colorManager.theme.appBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Divider(
            height: 1,
            thickness: 1,
            color: colorManager.theme.divider,
          ),
          const SizedBox(height: 20),
          Text(
            'ОСТАЛЬНЫЕ ПАРАМЕТРЫ',
            style:
                TextStyle(color: colorManager.theme.description, fontSize: 11),
          ),
          const SizedBox(height: 16),
          Text(
            'Ротация экипажа',
            style: TextStyle(
              color: colorManager.theme.informationText,
              fontSize: 11,
            ),
          ),
          const SizedBox(height: 5),
          const DropDownCard(label: 'Без ротации'),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Гейт',
                      style: TextStyle(
                          color: colorManager.theme.informationText,
                          fontSize: 11),
                    ),
                    const SizedBox(height: 2),
                    const DropDownCard(label: '32'),
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
                      'Пассаж.',
                      style: TextStyle(
                          color: colorManager.theme.informationText,
                          fontSize: 11),
                    ),
                    const SizedBox(height: 2),
                    const DropDownCard(label: '146'),
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
                      'Бизнес',
                      style: TextStyle(
                          color: colorManager.theme.informationText,
                          fontSize: 11),
                    ),
                    const SizedBox(height: 2),
                    const DropDownCard(label: '17'),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Дети',
                      style: TextStyle(
                          color: colorManager.theme.informationText,
                          fontSize: 11),
                    ),
                    const SizedBox(height: 2),
                    const DropDownCard(label: '10'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
