import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../product/init/startup/startup_top.dart';

class BaseView<T extends Store> extends StatefulWidget {
  final Widget Function(BuildContext context, T viewModel) onPageBuilder;
  final void Function(T viewModel) onModelReady;

  const BaseView({
    Key? key,
    required this.onPageBuilder,
    required this.onModelReady,
  }) : super(key: key);

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends Store> extends State<BaseView<T>> {
  late T viewModel;

  @override
  void initState() {
    viewModel = Startup.locator<T>();
    widget.onModelReady(viewModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: widget.onPageBuilder(context, viewModel),
    );
  }
}
