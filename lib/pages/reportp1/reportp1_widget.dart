import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'reportp1_model.dart';
export 'reportp1_model.dart';

class Reportp1Widget extends StatefulWidget {
  const Reportp1Widget({super.key});

  @override
  _Reportp1WidgetState createState() => _Reportp1WidgetState();
}

class _Reportp1WidgetState extends State<Reportp1Widget> {
  late Reportp1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Reportp1Model());

    _model.fullnameController ??= TextEditingController();
    _model.fullnameFocusNode ??= FocusNode();

    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.phonenumberController ??= TextEditingController();
    _model.phonenumberFocusNode ??= FocusNode();

    _model.dateofbirthController ??= TextEditingController();
    _model.dateofbirthFocusNode ??= FocusNode();

    _model.residentialAddressController ??= TextEditingController();
    _model.residentialAddressFocusNode ??= FocusNode();

    _model.adressofpropertyController ??= TextEditingController();
    _model.adressofpropertyFocusNode ??= FocusNode();

    _model.howlonglivedpropertyController ??= TextEditingController();
    _model.howlonglivedpropertyFocusNode ??= FocusNode();

    _model.anydisrepairController ??= TextEditingController();
    _model.anydisrepairFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return StreamBuilder<List<ReportRecord>>(
      stream: queryReportRecord(
        queryBuilder: (reportRecord) => reportRecord
            .where(
              'Fullname',
              isEqualTo: _model.fullnameController.text,
            )
            .where(
              'EmailAddress',
              isEqualTo: _model.emailAddressController.text,
            )
            .where(
              'Phonenumber',
              isEqualTo: int.tryParse(_model.phonenumberController.text),
            )
            .where(
              'Dateofbirth',
              isEqualTo: double.tryParse(_model.dateofbirthController.text),
            )
            .where(
              'ResidentialAddress',
              isEqualTo:
                  double.tryParse(_model.residentialAddressController.text),
            )
            .where(
              'How_long_you_have_lived_in_the_property',
              isEqualTo:
                  double.tryParse(_model.howlonglivedpropertyController.text),
            ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ReportRecord> reportp1ReportRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final reportp1ReportRecord = reportp1ReportRecordList.isNotEmpty
            ? reportp1ReportRecordList.first
            : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            endDrawer: Drawer(
              elevation: 16.0,
              child: Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        height: 50.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      Text(
                        'Tenant Legal Help',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Divider(
                        height: 40.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      Text(
                        'Company',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Outfit',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('HomePage');
                        },
                        text: 'Home',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).info,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                      Divider(
                        height: 10.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('HousingSolicisitors');
                        },
                        text: 'Housing Solicitors',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).info,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                      Divider(
                        height: 10.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('Eligibilitypassed');
                        },
                        text: 'Financial Eligibility',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).info,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                      Divider(
                        height: 10.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('testeligibility');
                        },
                        text: 'Report',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).info,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                      Divider(
                        height: 10.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('Eligibilitypassed');
                        },
                        text: 'My profile',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              2.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).info,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                      Divider(
                        height: 10.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('HomePage');
                        },
                        text: 'About us',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              2.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).info,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                      Divider(
                        height: 350.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.00, 0.00),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('Termsconditions');
                          },
                          text: 'Terms and Conditions',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).accent4,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.black,
                                ),
                            elevation: 0.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 0.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: const Color(0xFF2247D6),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'Report',
                style: FlutterFlowTheme.of(context).titleMedium,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      scaffoldKey.currentState!.openEndDrawer();
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.00, 0.00),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 10.0),
                                      child: Text(
                                        'Personal Information',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Text(
                                  'Full name: ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 18.0,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(1.00, 0.00),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.fullnameController,
                                      focusNode: _model.fullnameFocusNode,
                                      onFieldSubmitted: (_) async {
                                        _model.yourReport =
                                            await queryReportRecordOnce(
                                          queryBuilder: (reportRecord) => reportRecord
                                              .orderBy('Fullname')
                                              .orderBy('EmailAddress')
                                              .orderBy('Phonenumber')
                                              .orderBy('Dateofbirth')
                                              .orderBy('ResidentialAddress')
                                              .orderBy(
                                                  'The_address_of_the_property_being_repossessed')
                                              .orderBy(
                                                  'How_long_you_have_lived_in_the_property'),
                                          singleRecord: true,
                                        ).then((s) => s.firstOrNull);

                                        setState(() {});
                                      },
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Type here',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 4.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF2247D6),
                                            width: 4.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 4.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 4.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      textAlign: TextAlign.start,
                                      validator: _model
                                          .fullnameControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Email Address:',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 18.0,
                                    ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(1.00, 0.00),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 10.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.emailAddressController,
                                      focusNode: _model.emailAddressFocusNode,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Type here',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 4.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF2247D6),
                                            width: 4.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 4.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 4.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      textAlign: TextAlign.start,
                                      validator: _model
                                          .emailAddressControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Phone number:',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                  ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(1.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller: _model.phonenumberController,
                                focusNode: _model.phonenumberFocusNode,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Type here',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFF2247D6),
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.phone,
                                validator: _model.phonenumberControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Date of birth',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                  ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(1.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller: _model.dateofbirthController,
                                focusNode: _model.dateofbirthFocusNode,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Type here',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFF2247D6),
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.datetime,
                                validator: _model.dateofbirthControllerValidator
                                    .asValidator(context),
                                inputFormatters: [_model.dateofbirthMask],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Residential Address',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                  ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(1.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller: _model.residentialAddressController,
                                focusNode: _model.residentialAddressFocusNode,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Type here',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFF2247D6),
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                textAlign: TextAlign.start,
                                maxLines: 3,
                                keyboardType: TextInputType.streetAddress,
                                validator: _model
                                    .residentialAddressControllerValidator
                                    .asValidator(context),
                                inputFormatters: [
                                  _model.residentialAddressMask
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'The address of the property\nbeing repossessed',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 15.0,
                                  ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(1.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller: _model.adressofpropertyController,
                                focusNode: _model.adressofpropertyFocusNode,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Type here',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFF2247D6),
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                textAlign: TextAlign.start,
                                maxLines: 3,
                                keyboardType: TextInputType.streetAddress,
                                validator: _model
                                    .adressofpropertyControllerValidator
                                    .asValidator(context),
                                inputFormatters: [_model.adressofpropertyMask],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'How long you have lived \nin the property',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 15.0,
                                  ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(1.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller:
                                    _model.howlonglivedpropertyController,
                                focusNode: _model.howlonglivedpropertyFocusNode,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Type here',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFF2247D6),
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.number,
                                validator: _model
                                    .howlonglivedpropertyControllerValidator
                                    .asValidator(context),
                                inputFormatters: [
                                  _model.howlonglivedpropertyMask
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'any disrepair/maintenance \nissues in the property\nEvidence to being included\nsuch as communication with\nlandlord, photos Etc',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 15.0,
                                  ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(1.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller: _model.anydisrepairController,
                                focusNode: _model.anydisrepairFocusNode,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Type here',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFF2247D6),
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 4.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                textAlign: TextAlign.start,
                                maxLines: 4,
                                keyboardType: TextInputType.number,
                                validator: _model
                                    .anydisrepairControllerValidator
                                    .asValidator(context),
                                inputFormatters: [_model.anydisrepairMask],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await queryReportRecordOnce(
                          queryBuilder: (reportRecord) => reportRecord
                              .where(
                                'Fullname',
                                isEqualTo: _model.fullnameController.text,
                              )
                              .where(
                                'EmailAddress',
                                isEqualTo: _model.emailAddressController.text,
                              )
                              .where(
                                'Phonenumber',
                                isEqualTo: int.tryParse(
                                    _model.phonenumberController.text),
                              )
                              .where(
                                'Dateofbirth',
                                isEqualTo: double.tryParse(
                                    _model.dateofbirthController.text),
                              )
                              .where(
                                'ResidentialAddress',
                                isEqualTo: double.tryParse(
                                    _model.residentialAddressController.text),
                              )
                              .where(
                                'The_address_of_the_property_being_repossessed',
                                isEqualTo: double.tryParse(
                                    _model.adressofpropertyController.text),
                              )
                              .where(
                                'How_long_you_have_lived_in_the_property',
                                isEqualTo: double.tryParse(
                                    _model.howlonglivedpropertyController.text),
                              )
                              .where(
                                'Anydisrepair',
                                isEqualTo: double.tryParse(
                                    _model.anydisrepairController.text),
                              ),
                          singleRecord: true,
                        ).then((s) => s.firstOrNull);

                        context.pushNamed('Reportp2');
                      },
                      text: 'Next Page',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
