import "package:dio/dio.dart";
import 'package:flutter/material.dart';
import 'package:flutter_demo/model/WeiBoModel.dart';

class WeiBoHomeListPager extends StatefulWidget {
  String mCatId = "";

  WeiBoHomeListPager({Key key, @required this.mCatId}) : super(key: key);

  @override
  _WeiBoHomeListPagerState createState() => _WeiBoHomeListPagerState();
}

class _WeiBoHomeListPagerState extends State<WeiBoHomeListPager>
    with AutomaticKeepAliveClientMixin {


  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }


  @override
  void dispose() {
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("卡片：${widget.mCatId}"),)
    );
  }

}
