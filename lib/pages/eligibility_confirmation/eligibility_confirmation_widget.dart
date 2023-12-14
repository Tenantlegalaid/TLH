import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'eligibility_confirmation_model.dart';
export 'eligibility_confirmation_model.dart';

class EligibilityConfirmationWidget extends StatefulWidget {
  const EligibilityConfirmationWidget({super.key});

  @override
  _EligibilityConfirmationWidgetState createState() =>
      _EligibilityConfirmationWidgetState();
}

class _EligibilityConfirmationWidgetState
    extends State<EligibilityConfirmationWidget> {
  late EligibilityConfirmationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EligibilityConfirmationModel());

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
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
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
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Report',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).accent4,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).accent4,
                    ),
                    Text(
                      'Are you eligible for legal aid?',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 25.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Theme(
                data: ThemeData(
                  checkboxTheme: const CheckboxThemeData(
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).secondaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue1 ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue1 = newValue!);
                  },
                  title: Text(
                    'Yes',
                    style: FlutterFlowTheme.of(context).titleLarge,
                  ),
                  subtitle: Text(
                    'Subtitle goes here...',
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primary,
                  checkColor: FlutterFlowTheme.of(context).info,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ),
              Theme(
                data: ThemeData(
                  checkboxTheme: const CheckboxThemeData(
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).secondaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue2 ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue2 = newValue!);
                  },
                  title: Text(
                    'No',
                    style: FlutterFlowTheme.of(context).titleLarge,
                  ),
                  subtitle: Text(
                    'Subtitle goes here...',
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primary,
                  checkColor: FlutterFlowTheme.of(context).info,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ),
              Divider(
                height: 25.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Text(
                  'if yes, provide the supporting documents',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyLarge,
                ),
              ),
              const Divider(
                height: 50.0,
                thickness: 1.0,
              ),
              FFButtonWidget(
                onPressed: () async {
                  final selectedFiles = await selectFiles(
                    multiFile: true,
                  );
                  if (selectedFiles != null) {
                    setState(() => _model.isDataUploading = true);
                    var selectedUploadedFiles = <FFUploadedFile>[];

                    var downloadUrls = <String>[];
                    try {
                      selectedUploadedFiles = selectedFiles
                          .map((m) => FFUploadedFile(
                                name: m.storagePath.split('/').last,
                                bytes: m.bytes,
                              ))
                          .toList();

                      downloadUrls = (await Future.wait(
                        selectedFiles.map(
                          (f) async => await uploadData(f.storagePath, f.bytes),
                        ),
                      ))
                          .where((u) => u != null)
                          .map((u) => u!)
                          .toList();
                    } finally {
                      _model.isDataUploading = false;
                    }
                    if (selectedUploadedFiles.length == selectedFiles.length &&
                        downloadUrls.length == selectedFiles.length) {
                      setState(() {
                        _model.uploadedLocalFiles = selectedUploadedFiles;
                        _model.uploadedFileUrls = downloadUrls;
                      });
                    } else {
                      setState(() {});
                      return;
                    }
                  }
                },
                text: 'Upload Supporting Documents',
                options: FFButtonOptions(
                  height: 100.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xA9171010),
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Divider(
                height: 25.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('Eligibilitypassed');
                },
                text: 'Submit Form',
                options: FFButtonOptions(
                  width: 300.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFF2247D6),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
