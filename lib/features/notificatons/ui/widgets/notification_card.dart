import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rb_digital_test/core/styles/colors.dart';
import 'package:rb_digital_test/features/notificatons/domain/enteties/notification_model.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel model;
  const NotificationCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 5,
              offset: const Offset(3, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kMainColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: model.type == "favorite"
                      ? const Icon(
                          Icons.hearing_outlined,
                          size: 24,
                          color: kWhiteColor,
                        )
                      : model.type == "status"
                          ? const Icon(
                              Icons.timelapse_outlined,
                              size: 24,
                              color: kWhiteColor,
                            )
                          : const Icon(
                              Icons.message_outlined,
                              size: 24,
                              color: kWhiteColor,
                            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${model.time}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: kGreColor,
                      ),
                    ),
                    model.type == "favorite"
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: const Text(
                              "У вашего избраннего места появилась новая категория",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        : model.type == "status"
                            ? SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Wrap(
                                  children: [
                                    const Text(
                                      "Изменился статус заказа ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "№${model.oriderNumber}",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: kMainColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Wrap(
                                  children: [
                                    const Text(
                                      "Новое сообщение в заказе ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "№${model.oriderNumber}",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: kMainColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                    model.type == "status"
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: kGrey500,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 8),
                                child: Row(children: [
                                  Text(
                                    "${model.statusFrom}",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_right_alt_rounded,
                                    size: 24,
                                    color: kBlackColor,
                                  ),
                                  Text(
                                    "${model.statusTo}",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          )
                        : Container(),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 16,
                      ),
                      child: Text(
                        "Перейти в заказ",
                        style: TextStyle(
                          fontSize: 16,
                          color: kMainColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
