import 'package:flutter/material.dart';
import 'package:repopharma_app/help/const.dart';
import 'package:repopharma_app/widgets/header_home_view.dart/appbar.dart';
import 'package:repopharma_app/widgets/header_home_view.dart/circular_container_shep.dart';
import 'package:repopharma_app/widgets/header_home_view.dart/curve_widget.dart';

class PrimaryHeader extends StatelessWidget {
  const PrimaryHeader({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurveWidget(
      child: Container(
        color: kBaseColor,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 310,
          child: Stack(
            children: [
              Positioned(
                top: -100,
                right: -250,
                child: CircularContainer(
                  backgroundcolor: Colors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                  backgroundcolor: Colors.white.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
