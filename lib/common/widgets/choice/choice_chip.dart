import 'package:e_commerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';



/// --Most of the Styling is already defined in the Utils -> Themes -> ChipTheme.dart
class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child:  ChoiceChip(
        label: isColor? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? TColors.textWhite : null),
        avatar:isColor ? TCircularContainer(
          width: 50, height:50, backgroundColor: THelperFunctions.getColor(text)!): null,

        shape:isColor ? const CircleBorder():null,
        labelPadding: isColor ? const EdgeInsets.all(0):null,   //make icon in the center
        padding:isColor ? const EdgeInsets.all(0):null,
        backgroundColor:isColor? THelperFunctions.getColor(text)!:null,
    ),
    );
  }
}
