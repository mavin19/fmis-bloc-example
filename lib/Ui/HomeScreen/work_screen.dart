import 'package:flutter/material.dart';
import 'package:fmis_portal/Ui/Components/chat_item.dart';
import 'package:fmis_portal/Ui/Components/contact_item.dart';
import 'package:fmis_portal/Ui/Components/search_input_field.dart';

class WorkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchInputField(),
        Expanded(
          child: Container(
            child: ListView.separated(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ChatItem(
                  image: AssetImage('assets/images/fmis_logo.png'),
                  name: "koung",
                  chat: 'dsjbdkjabdkasdasd',
                  time: "9:18PM",
                  notificationNumber: "2",
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                indent: 65,
                thickness: 0.5,
              ),
            ),
          ),
        )
      ],
    );
  }
}
