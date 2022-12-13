import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/register_resident/controllers/register_resident_controller.dart';
import 'package:proyecto_bases_final_consuelo/app/utils/utils.dart';

class TypeIdSelector extends StatelessWidget {
  TypeIdSelector({
    super.key,
    required this.controller,
    required this.selectedItem,
    required this.items,
  });
  RegisterResidentController controller;
  RxString selectedItem;
  List<String> items;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(
          color: Palette.darkGreen,
        ),
      ),
      width: Get.width * 0.3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Theme(
          data: ThemeData(primaryColorLight: Palette.green),
          child: DropdownSearch<String>(
            popupProps: PopupProps.menu(
              listViewProps: const ListViewProps(),
              scrollbarProps: ScrollbarProps(
                thumbColor: Palette.green.withOpacity(0.8),
                thumbVisibility: true,
              ),
              favoriteItemProps: const FavoriteItemProps(),
              searchFieldProps: const TextFieldProps(),
              showSelectedItems: true,
              menuProps: const MenuProps(
                shape: RoundedRectangleBorder(),
              ),
            ),
            dropdownButtonProps: const DropdownButtonProps(
              icon: Icon(
                Icons.keyboard_arrow_down_outlined,
              ),
              color: Color(0xFF565656),
            ),
            items: items,
            dropdownDecoratorProps: DropDownDecoratorProps(
              baseStyle: styles.textFieldTextStyle,
              textAlignVertical: TextAlignVertical.center,
              dropdownSearchDecoration: InputDecoration(
                errorStyle: styles.errorStyle,
                enabledBorder: styles.noBorderTextField,
                focusedBorder: styles.noBorderTextField,
                errorBorder: styles.noBorderTextField,
                focusedErrorBorder: styles.noBorderTextField,
              ),
            ),
            onChanged: (value) {
              selectedItem.value = value!;
              print('Seleccionado: $value');
            },
            selectedItem: selectedItem.value,
          ),
        ),
      ),
    );
  }
}
