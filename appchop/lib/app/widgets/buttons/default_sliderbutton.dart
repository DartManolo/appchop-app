import 'package:flutter/material.dart';

import '../../utils/color_list.dart';
import 'solid_button.dart';

class DefaultSliderbutton extends StatelessWidget {
  final String mensaje;
  final Future<bool?> Function() action;
  final List<double> ltrbp;
  const DefaultSliderbutton({
    super.key,
    this.mensaje = "Deslizar para aceptar",
    required this.action,
    this.ltrbp = const [10, 10, 10, 10],
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        ltrbp[0],
        ltrbp[1],
        ltrbp[2],
        ltrbp[3],
      ),
      child: SolidButton(
          texto: mensaje,
          fondoColor: ColorList.sys[1],
          textoColor: ColorList.sys[0],
          onPressed: () { },
          onLongPress: () async {
            await action();
          }
        ),
      /*child: SliderButton(
        width: double.infinity,
        height: 60,
        alignLabel: Alignment.center,
        action: action,
        label: Text(
          mensaje,
          style: TextStyle(
            color: Color(ColorList.sys[0]),
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
        icon: Icon(
          MaterialIcons.arrow_forward_ios,
          color: Color(ColorList.sys[0]),
        ),
        backgroundColor: Color(ColorList.ui[3]),
        buttonColor: Color(ColorList.sys[1]),
        baseColor: Color(ColorList.sys[0]),
      ),*/
    );
  }
}