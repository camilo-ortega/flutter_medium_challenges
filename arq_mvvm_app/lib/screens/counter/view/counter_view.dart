import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/counter_viewmodel.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CounterViewModel(),
      builder: (BuildContext context, Widget? child) => Scaffold(
        appBar: AppBar(title: const Text("Counter with MVVM")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<CounterViewModel>(
                builder: (context, counterViewModel, child) {
                  final int count = context.watch<CounterViewModel>().count;

                  return Text('$count',
                      style: Theme.of(context).textTheme.headlineMedium);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      context.read<CounterViewModel>().increment();
                    },
                    tooltip: 'Increment',
                    heroTag: null,
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      context.read<CounterViewModel>().decrement();
                    },
                    tooltip: 'Decrement',
                    heroTag: null,
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
