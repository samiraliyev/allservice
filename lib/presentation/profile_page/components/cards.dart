import 'package:allservice/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class ProfilePageCard extends StatefulWidget {
  const ProfilePageCard({super.key, required this.text, required this.leading});
  final String text;
  final IconData leading;

  @override
  State<ProfilePageCard> createState() => _ProfilePageCardState();
}

class _ProfilePageCardState extends State<ProfilePageCard> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
              blurRadius: 0.4,
              color: Colors.grey,
              offset: Offset(0.5, 0.8),
              spreadRadius: 0.5)
        ], borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: ListTile(
          leading: Icon(
            widget.leading,
          ),
          title: Text(
            widget.text,
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      )
    ]);
  }
}

class SettingsCards extends StatefulWidget {
  const SettingsCards({super.key, required this.text, required this.leading});
  final String text;
  final IconData leading;

  @override
  State<SettingsCards> createState() => _SettingsCardsState();
}

class _SettingsCardsState extends State<SettingsCards> {
  bool _isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
              blurRadius: 0.4,
              color: Colors.grey,
              offset: Offset(0.5, 0.8),
              spreadRadius: 0.5)
        ], borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: ListTile(
            leading: Icon(
              widget.leading,
            ),
            title: Text(
              widget.text,
            ),
            trailing: Switch(
                activeColor: AppColor.btnColor,
                value: _isSwitchOn,
                onChanged: (val) {
                  setState(() {
                    _isSwitchOn = val;
                  });
                })),
      ),
      const SizedBox(
        height: 20,
      )
    ]);
  }
}
