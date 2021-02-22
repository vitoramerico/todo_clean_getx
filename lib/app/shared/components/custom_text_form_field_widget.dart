import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final FocusNode? focusNode;
  final String labelText;
  final String? hintText;
  final String errorText;
  final bool enabled;
  final bool obscureText;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? onValidator;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  final Function(String?)? onSubmitted;

  const CustomTextFormFieldWidget({
    Key? key,
    this.controller,
    this.initialValue,
    required this.labelText,
    this.focusNode,
    this.hintText,
    this.errorText = '',
    this.enabled = true,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.onValidator,
    this.onSaved,
    this.onChanged,
    this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        controller: controller,
        initialValue: initialValue,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        focusNode: focusNode,
        enabled: enabled,
        obscureText: obscureText,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          errorText: errorText,
          suffixIcon: errorText.isNotEmpty
              ? Tooltip(
                  message: errorText,
                  child: const Icon(Icons.info_outline, color: Colors.redAccent),
                )
              : null,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Theme.of(context).primaryColor),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey[100] ?? Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey[400] ?? Colors.grey),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey[400] ?? Colors.grey),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey[400] ?? Colors.grey),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Theme.of(context).primaryColor),
          ),
        ),
        validator: onValidator,
        onSaved: onSaved,
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
      ),
    );
  }
}
