import 'package:flutter/material.dart';
import 'package:password_manager/core/locator/locator.dart';
import 'package:provider/provider.dart';

class BaseView<T extends ChangeNotifier> extends StatefulWidget {
  final Widget Function(BuildContext context, T value, Widget? child) builder;
  final Function(T)? onModelReady;
  final T? viewModel;
  const BaseView({required this.builder, this.onModelReady, this.viewModel});
  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

void showSnackBar(BuildContext context, String value) {
  if (value != null) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(value)));
  }
}

class _BaseViewState<T extends ChangeNotifier> extends State<BaseView<T>> {
  late T model;
  @override
  void initState() {
    model = widget.viewModel ?? locator<T>();

    if (widget.onModelReady != null) {
      widget.onModelReady!(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.viewModel != null
        ? widget.builder(context, model, null)
        : ChangeNotifierProvider<T>(
            create: (context) => model,
            child: widget.builder(context, model, null));
  }
}

class BaseView2<A extends ChangeNotifier, B extends ChangeNotifier>
    extends StatefulWidget {
  final Widget Function(BuildContext context, A viewModel1, B viewModel2)
      builder;
  final A? model1;
  final B? model2;
  final Widget? child;

  final Function(A model1, B model2)? onModelReady;

  const BaseView2({
    required this.builder,
    this.model1,
    this.model2,
    Key? key,
    this.child,
    this.onModelReady,
  })  : assert(builder != null),
        super(key: key);

  @override
  _BaseView2State<A, B> createState() => _BaseView2State<A, B>();
}

class _BaseView2State<A extends ChangeNotifier, B extends ChangeNotifier>
    extends State<BaseView2<A, B>> {
  late A model1;
  late B model2;

  @override
  void initState() {
    model1 = widget.model1 ?? locator<A>();
    model2 = widget.model2 ?? locator<B>();
    if (widget.onModelReady != null) {
      widget.onModelReady!(model1, model2);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<A>.value(value: model1),
        ChangeNotifierProvider<B>.value(value: model2),
      ],
      child: widget.builder(context, model1, model2),
    );
  }
}
