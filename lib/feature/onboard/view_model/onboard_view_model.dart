import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/service/no_service.dart';
import '../../../core/base/view_model/base_view_model.dart';
import '../../../core/constants/navigation/navigation_constants.dart';

part 'onboard_view_model.g.dart';

class OnboardViewModel = _OnboardViewModelBase with _$OnboardViewModel;

abstract class _OnboardViewModelBase extends BaseViewModel<NoService>
    with Store {
  @override
  void setContext(BuildContext context) {
    this.context = context;
  }

  @override
  void init() {
    logger.v('OnboardViewModel initialize');
    Future.microtask(() async {
      await Future.delayed(context.durationSlow, () {
        context.navigateToReset(NavigationConstants.login);
      });
    });
  }
}
