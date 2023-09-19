import 'package:flutter/material.dart';

class FavoritesAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;

  const FavoritesAppBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleTextStyle: TextStyle(color: Colors.black),
      elevation: 0,
      title: Text('Favorites'),
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      bottom: TabBar(
        padding: EdgeInsets.symmetric(vertical: 10),
        controller: tabController,
        indicator: _Decoration(color: Colors.blue, width: 20),
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: Colors.black,
        tabs: [
          SizedBox(
            height: 30,
            child: Tab(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text('Movies'),
              ),
            ),
          ),
          SizedBox(
            height: 30,
            child: Tab(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text('Series'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight * 2);
}

class _Decoration extends Decoration {
  final Color color;
  final double width;

  _Decoration({required this.color, required this.width});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) =>
      _Painter(this.color, this.width);
}

class _Painter extends BoxPainter {
  final Color color;
  final double width;

  _Painter(this.color, this.width);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final paint = Paint()..color = color;
    final size = configuration.size ?? Size.zero;
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(
              size.width * 0.5 + offset.dx - width,
              size.height * 0.9,
              width,
              width * 0.3,
            ),
            Radius.circular(4)),
        paint);
    // canvas.drawCircle(Offset(size.width*0.5+offset.dx, size.height*0.9), 4, paint);
  }
}
