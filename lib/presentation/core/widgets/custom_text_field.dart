import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.controller,
      this.hintText,
      this.keyboardType,
      this.labelText,
      this.initialValue,
      this.onChanged,
      this.decoration,
      this.onTap,
      this.readOnly = false,
      this.autofocus = false,
      this.validator,
      this.inputFormatters,
      this.maxLines = 1,
      this.autoCorrect = false, this.obscure = false})
      : super(key: key);
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? labelText;
  final String? initialValue;
  final Function(String)? onChanged;
  final InputDecoration? decoration;
  final VoidCallback? onTap;
  final bool readOnly;
  final bool autofocus;
  final int maxLines;
  final bool? autoCorrect;
  final bool? obscure;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    );
    final focusedBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.blueGrey),
      borderRadius: BorderRadius.circular(10),
    );
    final errorBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.redAccent),
      borderRadius: BorderRadius.circular(10),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (labelText != null) ...[
            Text(
              labelText!,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.black54,
                  ),
            ),
            const SizedBox(height: 7),
          ],
          SizedBox(
              child: TextFormField(
            validator: validator,
            autofocus: autofocus,
            autocorrect: autoCorrect ?? false,
            readOnly: readOnly,
            inputFormatters: inputFormatters,
            onTap: onTap,
            onChanged: onChanged,
            initialValue: initialValue,
            controller: controller,
            keyboardType: keyboardType,
            maxLines: maxLines,
                obscureText: obscure ?? false,
            decoration: decoration?.copyWith(
                  filled: true,
                  fillColor: Colors.grey,
                  isDense: true,
                  border: border,
                  enabledBorder: border,
                  focusedBorder: focusedBorder,
                  focusedErrorBorder: errorBorder,
                  errorBorder: errorBorder,
                  hintStyle: const TextStyle(color: Colors.grey),
                ) ??
                InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  hintText: hintText,
                  isDense: true,
                  border: border,
                  enabledBorder: border,
                  focusedBorder: focusedBorder,
                  focusedErrorBorder: errorBorder,
                  errorBorder: errorBorder,
                  hintStyle: const TextStyle(color: Colors.blueGrey),
                ),
            style: readOnly
                ? Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.blueGrey)
                : Theme.of(context).textTheme.bodyMedium,
          )),
        ],
      ),
    );
  }
}
