import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reportp1_widget.dart' show Reportp1Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Reportp1Model extends FlutterFlowModel<Reportp1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Fullname widget.
  FocusNode? fullnameFocusNode;
  TextEditingController? fullnameController;
  String? Function(BuildContext, String?)? fullnameControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Fullname widget.
  ReportRecord? yourReport;
  // State field(s) for EmailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for Phonenumber widget.
  FocusNode? phonenumberFocusNode;
  TextEditingController? phonenumberController;
  String? Function(BuildContext, String?)? phonenumberControllerValidator;
  // State field(s) for dateofbirth widget.
  FocusNode? dateofbirthFocusNode;
  TextEditingController? dateofbirthController;
  final dateofbirthMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dateofbirthControllerValidator;
  // State field(s) for ResidentialAddress widget.
  FocusNode? residentialAddressFocusNode;
  TextEditingController? residentialAddressController;
  final residentialAddressMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      residentialAddressControllerValidator;
  // State field(s) for Adressofproperty widget.
  FocusNode? adressofpropertyFocusNode;
  TextEditingController? adressofpropertyController;
  final adressofpropertyMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? adressofpropertyControllerValidator;
  // State field(s) for howlonglivedproperty widget.
  FocusNode? howlonglivedpropertyFocusNode;
  TextEditingController? howlonglivedpropertyController;
  final howlonglivedpropertyMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      howlonglivedpropertyControllerValidator;
  // State field(s) for Anydisrepair widget.
  FocusNode? anydisrepairFocusNode;
  TextEditingController? anydisrepairController;
  final anydisrepairMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? anydisrepairControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    fullnameFocusNode?.dispose();
    fullnameController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    phonenumberFocusNode?.dispose();
    phonenumberController?.dispose();

    dateofbirthFocusNode?.dispose();
    dateofbirthController?.dispose();

    residentialAddressFocusNode?.dispose();
    residentialAddressController?.dispose();

    adressofpropertyFocusNode?.dispose();
    adressofpropertyController?.dispose();

    howlonglivedpropertyFocusNode?.dispose();
    howlonglivedpropertyController?.dispose();

    anydisrepairFocusNode?.dispose();
    anydisrepairController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
