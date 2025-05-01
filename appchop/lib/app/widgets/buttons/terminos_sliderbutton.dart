import 'package:flutter/material.dart';
import '../../utils/color_list.dart';
import 'solid_button.dart';

class TerminosSliderbutton extends StatelessWidget {
  final bool visible;
  final Future<bool?> Function() action;
  const TerminosSliderbutton({
    super.key,
    required this.visible,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Container(
        padding: const EdgeInsets.all(10,),
        child: SolidButton(
          texto: "Dejar presionado para aceptar",
          fondoColor: ColorList.sys[1],
          textoColor: ColorList.sys[0],
          onPressed: () { },
          onLongPress: () async {
            await action();
          }
        ),
        /*child: SliderButton(
          height: 60,
          action: action,
          label: Text(
            "Deslizar para aceptar",
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
      ),
    );
  }
}