import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rb_digital_test/core/components/loading/circle_loading.dart';
import 'package:rb_digital_test/core/components/snack/snack.dart';
import 'package:rb_digital_test/core/components/snack/snack_widget.dart';
import 'package:rb_digital_test/core/components/text_inputs/main_text_input.dart';
import 'package:rb_digital_test/core/styles/colors.dart';
import 'package:rb_digital_test/features/notificatons/ui/bloc/notification_bloc.dart';
import 'package:rb_digital_test/features/notificatons/ui/widgets/notification_card.dart';
import 'package:rb_digital_test/injection.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  TextEditingController searcController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<NotificationBloc>()..add(const NotificationEvent.started()),
      child: Scaffold(
        backgroundColor: kGrey200,
        body: BlocConsumer<NotificationBloc, NotificationState>(
          listener: (context, state) {
            if (state.noInternet) {
              ScaffoldMessenger.of(context).showSnackBar(
                noInternetSnackbar,
              );
            }
            if (state.serverError) {
              ScaffoldMessenger.of(context).showSnackBar(
                snackWidget(
                  content: 'Server failure',
                  label: 'HIDE',
                  onPressed: () {},
                ),
              );
            }
          },
          builder: (context, state) {
            if (state.isSubmitting) {
              return const CircleLoading();
            }
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  toolbarHeight: 80,
                  pinned: true,
                  backgroundColor: kGrey200,
                  title: buildTopIcons(),
                  centerTitle: true,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 16, left: 16,  top: 20),
                            child: MainTextField(
                              height: 44,
                              onChanged: () {},
                              width: MediaQuery.of(context).size.width,
                              textInputType: TextInputType.text,
                              controller: searcController,
                              hintText: "Поиск по номеру заказа",
                              // height: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 30),
                            child: Column(
                              children: List.generate(
                                state.notifications.length,
                                (index) => NotificationCard(
                                  model: state.notifications[index],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    childCount: 1,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

Widget buildTopIcons() {
  return Stack(
    alignment: Alignment.center,
    children: [
      InkWell(
        onTap: () {},
        child: const Icon(
          Icons.add_location_alt_outlined,
          color: kBlackColor,
          size: 24,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.menu,
              color: kBlackColor,
              size: 24,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kMainColor,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.notification_add_outlined,
                  size: 24,
                  color: kWhiteColor,
                ),
              ),
            ),
          )
        ],
      ),
    ],
  );
}
