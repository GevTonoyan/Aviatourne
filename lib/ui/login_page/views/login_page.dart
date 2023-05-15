import 'package:aviatourne/theme/colors/color_manager.dart';
import 'package:aviatourne/ui/airline_page/view_models/airline_view_model.dart';
import 'package:aviatourne/ui/airline_page/views/airline_page.dart';
import 'package:aviatourne/ui/login_page/view_models/login_view_model.dart';
import 'package:aviatourne/widgets/postive_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    ColorManager? colorManager,
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _passwordController = TextEditingController();

  final _passwordFocusNode = FocusNode();

  late final viewModel = Provider.of<LoginViewModel>(context);

  @override
  void initState() {
    super.initState();
    _passwordFocusNode.addListener(() {
      viewModel.isPasswordHasFocus = _passwordFocusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ColorManager colorManager = ColorManager();
    return Material(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: colorManager.theme.appBlack,
          body: Stack(
            children: [
              Image.asset(
                'assets/images/map.png',
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 46,
                  ),
                  SvgPicture.asset('assets/images/aviatourne_logo.svg',
                      semanticsLabel: 'Acme Logo'),
                  const SizedBox(
                    height: 22,
                  ),
                  SvgPicture.asset('assets/images/aviatourne_header.svg'),
                  const SizedBox(
                    height: 6,
                  ),
                  SvgPicture.asset('assets/images/aviatourne_description.svg',
                      semanticsLabel: 'Acme Logo'),
                  const SizedBox(
                    height: 100,
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: Colors.transparent,
                              contentPadding: EdgeInsets.zero,
                              content: Container(
                                height: 258,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: colorManager.theme.appGrey),
                                child: ListView.builder(
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        viewModel.userNameText =
                                            viewModel.users[index];
                                        Navigator.of(context).pop();
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 16, left: 16, right: 16),
                                        child: Text(
                                          viewModel.users[index],
                                          style: TextStyle(
                                              color:
                                                  colorManager.theme.appWhite),
                                        ),
                                      ),
                                    );
                                  },
                                  itemCount: viewModel.users.length,
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: colorManager.theme.cardBackground,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            viewModel.userNameText,
                            style:
                                TextStyle(color: colorManager.theme.appWhite),
                          ),
                          Icon(
                            Icons.arrow_drop_down_sharp,
                            color: colorManager.theme.appWhite,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: viewModel.isPasswordHasFocus
                          ? colorManager.theme.cardBackgroundFocused
                          : colorManager.theme.cardBackground,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      focusNode: _passwordFocusNode,
                      style: TextStyle(
                          color: viewModel.isPasswordHasFocus
                              ? colorManager.theme.appBlack
                              : colorManager.theme.appWhite),
                      decoration: const InputDecoration(
                        // labelText: 'password',
                        border: InputBorder.none,
                      ),
                      validator: (String? value) {
                        return null;
                      },
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: PositiveButton(
                        label: 'Login',
                        backgroundColor:
                            colorManager.theme.positiveBackgroundLight,
                        onPressed: () {
                          viewModel.validateUser(_passwordController.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChangeNotifierProvider(
                                create: (_) => AirlineViewModel(),
                                child: const AirlinePage(),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
