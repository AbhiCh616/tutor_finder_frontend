import 'package:flutter/material.dart';
import 'package:tutor_finder_frontend/pages/register_tutor/basic_info/basic_info.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tutor_finder_frontend/pages/register_tutor/bottom_bar.dart';
import 'dart:math' as math;

import 'package:tutor_finder_frontend/pages/register_tutor/progress_headline.dart';

class RegisterTutor extends StatefulWidget {
  @override
  _RegisterTutorState createState() => _RegisterTutorState();
}

class _RegisterTutorState extends State<RegisterTutor> {
  int _currentIndex = 0;
  List<Widget> _fragments = [BasicInfoPage()];

  String _getProgressText() {
    return AppLocalizations.of(context)!.step +
        ' ' +
        (_currentIndex + 1).toString() +
        ' ' +
        AppLocalizations.of(context)!.of_lc +
        ' ' +
        _fragments.length.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.tutorRegistration),
        elevation: 0,
        leading: Transform.rotate(
          angle: 45 * math.pi / 180,
          child: IconButton(
            icon: Icon(
              Icons.add,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            onPressed: () {},
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ProgressHeadline(_getProgressText()),
            Expanded(child: _fragments[_currentIndex]),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
