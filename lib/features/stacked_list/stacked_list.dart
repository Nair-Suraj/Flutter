import 'package:flutter/material.dart';
import 'dart:math' as math;

class StackedList extends StatelessWidget {
  final List<Color> _colors = [
    Colors.teal,
    Colors.teal,
    Colors.teal,
    Colors.lightBlue,
    Colors.lightBlue,
    Colors.lightBlue,
  ];

  final List<String> _headers = [
    "Content Page 1",
    "Content Page 2",
    "Content Page 3",
    "Interactive Page 1",
    "Interactive Page 2",
    "Interactive Page 3",
  ];

  static const _minHeight = 40.0;
  static const _maxHeight = 120.0;

  @override
  Widget build(BuildContext context) => CustomScrollView(
        slivers: _headers
            .map(
              (head) => StackedListChild(
                minHeight: _minHeight,
                maxHeight: _headers.indexOf(head) == _headers.length - 1
                    ? MediaQuery.of(context).size.height
                    : _maxHeight,
                pinned: true,
                child: Container(
                  color:_colors[_headers.indexOf(head)],
                  child: Container(
//                    decoration: BoxDecoration(
//                      border: Border(
//                        left: BorderSide(
//                          color: Colors.black,
//                          width: 1.0,
//                        ),
//                        top: BorderSide(
//                          color: Colors.black,
//                          width: 1.0,
//                        ),
//                      ),
//
//                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(_minHeight)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 50.0, // has the effect of softening the shadow
                          spreadRadius: 1.0, // has the effect of extending the shadow
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        head,
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      );
}

class StackedListChild extends StatelessWidget {
  final double minHeight;
  final double maxHeight;
  final bool pinned;
  final bool floating;
  final Widget child;

  SliverPersistentHeaderDelegate get _delegate => _StackedListDelegate(
      minHeight: minHeight, maxHeight: maxHeight, child: child);

  const StackedListChild({
    Key key,
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
    this.pinned = false,
    this.floating = false,
  })  : assert(child != null),
        assert(minHeight != null),
        assert(maxHeight != null),
        assert(pinned != null),
        assert(floating != null),
        super(key: key);

  @override
  Widget build(BuildContext context) => SliverPersistentHeader(
      key: key, pinned: pinned, floating: floating, delegate: _delegate);
}

class _StackedListDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _StackedListDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_StackedListDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
