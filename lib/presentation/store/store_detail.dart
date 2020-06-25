import 'package:flutter/material.dart';
import 'package:shopme/infrastructure/models/store_model.dart';
import 'package:shopme/presentation/store/widgets/headerStoreSliverDelegate.dart';

class StoreDetail extends StatelessWidget {
  final Store store;

  const StoreDetail({@required this.store});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: HeaderStoreSliverDelegate(
              expandedHeight: 180.0,
              store: store,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [],
            ),
          ),
        ],
      ),
    );
  }
}
