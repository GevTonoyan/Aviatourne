import 'package:aviatourne/theme/colors/color_manager.dart';
import 'package:aviatourne/ui/login_page/view_models/login_view_model.dart';
import 'package:aviatourne/widgets/postive_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  final _passwordController = TextEditingController();

  LoginPage({
    ColorManager? colorManager,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorManager colorManager = ColorManager();
    final viewModel = Provider.of<LoginViewModel>(context);

    return Material(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFF333334),
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
                  SvgPicture.asset('assets/images/aviatourne_header.svg',
                      semanticsLabel: 'Acme Logo'),
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
                              contentPadding: EdgeInsets.zero,
                              content: Container(
                                height: 258,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xff737677)),
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
                                          style: const TextStyle(
                                              color: Colors.white),
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
                        color: const Color(0xff4D4D4D),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            viewModel.userNameText,
                            style: const TextStyle(color: Colors.white),
                          ),
                          const Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.white,
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
                      color: const Color(0xff4D4D4D),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
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
                        onPressed: () {
                          viewModel.validateUser(_passwordController.text);
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
