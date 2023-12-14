import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sign_model.dart';
export 'sign_model.dart';

class SignWidget extends StatefulWidget {
  const SignWidget({super.key});

  @override
  _SignWidgetState createState() => _SignWidgetState();
}

class _SignWidgetState extends State<SignWidget> with TickerProviderStateMixin {
  late SignModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: const Offset(0.0, 80.0),
          end: const Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 400.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: const Offset(0.0, 20.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: const Offset(0.0, 20.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.emailAddressController1 ??= TextEditingController();
    _model.emailAddressFocusNode1 ??= FocusNode();

    _model.passwordController1 ??= TextEditingController();
    _model.passwordFocusNode1 ??= FocusNode();

    _model.emailAddressController2 ??= TextEditingController();
    _model.emailAddressFocusNode2 ??= FocusNode();

    _model.passwordController2 ??= TextEditingController();
    _model.passwordFocusNode2 ??= FocusNode();

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                      context.pushNamed('EligibilityConfirmation');
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
          title: Align(
            alignment: const AlignmentDirectional(0.00, 0.00),
            child: Text(
              'Tenant Legal Aid',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
            ),
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
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 230.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  shape: BoxShape.rectangle,
                ),
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Align(
                  alignment: const AlignmentDirectional(0.00, -1.00),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Blue_Minimalist_House_Care_Building_Logo-2.png',
                      width: 300.0,
                      height: 198.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, -1.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 130.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).width >= 768.0
                                ? 530.0
                                : 630.0,
                            constraints: const BoxConstraints(
                              maxWidth: 570.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: const Alignment(0.0, 0),
                                    child: TabBar(
                                      isScrollable: true,
                                      labelColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      unselectedLabelColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      labelPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              32.0, 0.0, 32.0, 0.0),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .titleMedium,
                                      unselectedLabelStyle: const TextStyle(),
                                      indicatorColor: const Color(0xFF2247D6),
                                      indicatorWeight: 3.0,
                                      tabs: const [
                                        Tab(
                                          text: 'Create Account',
                                        ),
                                        Tab(
                                          text: 'Log In',
                                        ),
                                      ],
                                      controller: _model.tabBarController,
                                    ),
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      controller: _model.tabBarController,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.00, -1.00),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 16.0, 24.0, 0.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                  ))
                                                    Container(
                                                      width: 230.0,
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ),
                                                  Text(
                                                    'Create Account',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineMedium,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 24.0),
                                                    child: Text(
                                                      'Let\'s get started by filling out the form below.',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .emailAddressController1,
                                                        focusNode: _model
                                                            .emailAddressFocusNode1,
                                                        autofocus: true,
                                                        autofillHints: const [
                                                          AutofillHints.email
                                                        ],
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: 'Email',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          contentPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      24.0,
                                                                      24.0,
                                                                      24.0),
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                        keyboardType:
                                                            TextInputType
                                                                .emailAddress,
                                                        validator: _model
                                                            .emailAddressController1Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .passwordController1,
                                                        focusNode: _model
                                                            .passwordFocusNode1,
                                                        autofocus: true,
                                                        autofillHints: const [
                                                          AutofillHints.password
                                                        ],
                                                        obscureText: !_model
                                                            .passwordVisibility1,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: 'Password',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          contentPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      24.0,
                                                                      24.0,
                                                                      24.0),
                                                          suffixIcon: InkWell(
                                                            onTap: () =>
                                                                setState(
                                                              () => _model
                                                                      .passwordVisibility1 =
                                                                  !_model
                                                                      .passwordVisibility1,
                                                            ),
                                                            focusNode: FocusNode(
                                                                skipTraversal:
                                                                    true),
                                                            child: Icon(
                                                              _model.passwordVisibility1
                                                                  ? Icons
                                                                      .visibility_outlined
                                                                  : Icons
                                                                      .visibility_off_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                        validator: _model
                                                            .passwordController1Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.00, 0.00),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          context.pushNamedAuth(
                                                              'Eligibilitypassed',
                                                              context.mounted);

                                                          GoRouter.of(context)
                                                              .prepareAuthEvent();

                                                          final user =
                                                              await authManager
                                                                  .createAccountWithEmail(
                                                            context,
                                                            _model
                                                                .emailAddressController1
                                                                .text,
                                                            _model
                                                                .passwordController1
                                                                .text,
                                                          );
                                                          if (user == null) {
                                                            return;
                                                          }
                                                        },
                                                        text: 'Get Started',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 230.0,
                                                          height: 52.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color:
                                                              const Color(0xFF2247D6),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      40.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      24.0),
                                                          child: Text(
                                                            'Or sign up with',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: Wrap(
                                                            spacing: 16.0,
                                                            runSpacing: 0.0,
                                                            alignment:
                                                                WrapAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .center,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .center,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    GoRouter.of(
                                                                            context)
                                                                        .prepareAuthEvent();
                                                                    final user =
                                                                        await authManager
                                                                            .signInWithGoogle(context);
                                                                    if (user ==
                                                                        null) {
                                                                      return;
                                                                    }

                                                                    context.goNamedAuth(
                                                                        'Eligibilitypage',
                                                                        context
                                                                            .mounted);
                                                                  },
                                                                  text:
                                                                      'Continue with Google',
                                                                  icon: const FaIcon(
                                                                    FontAwesomeIcons
                                                                        .google,
                                                                    size: 20.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width:
                                                                        230.0,
                                                                    height:
                                                                        44.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            40.0),
                                                                    hoverColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                  ),
                                                                ),
                                                              ),
                                                              isAndroid
                                                                  ? Container()
                                                                  : Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                      child:
                                                                          FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          GoRouter.of(context)
                                                                              .prepareAuthEvent();
                                                                          final user =
                                                                              await authManager.signInWithApple(context);
                                                                          if (user ==
                                                                              null) {
                                                                            return;
                                                                          }

                                                                          context.goNamedAuth(
                                                                              'Eligibilitypage',
                                                                              context.mounted);
                                                                        },
                                                                        text:
                                                                            'Continue with Apple',
                                                                        icon:
                                                                            const FaIcon(
                                                                          FontAwesomeIcons
                                                                              .apple,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              230.0,
                                                                          height:
                                                                              44.0,
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                          elevation:
                                                                              0.0,
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(40.0),
                                                                          hoverColor:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                        ),
                                                                      ),
                                                                    ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'columnOnPageLoadAnimation1']!),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.00, -1.00),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 16.0, 24.0, 0.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                  ))
                                                    Container(
                                                      width: 230.0,
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ),
                                                  Text(
                                                    'Welcome Back',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineMedium,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 24.0),
                                                    child: Text(
                                                      'Fill out the information below in order to access your account.',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .emailAddressController2,
                                                        focusNode: _model
                                                            .emailAddressFocusNode2,
                                                        autofocus: true,
                                                        autofillHints: const [
                                                          AutofillHints.email
                                                        ],
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: 'Email',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFE0E3E7),
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFFF5963),
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFFF5963),
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          contentPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      24.0,
                                                                      0.0,
                                                                      24.0),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                        keyboardType:
                                                            TextInputType
                                                                .emailAddress,
                                                        validator: _model
                                                            .emailAddressController2Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .passwordController2,
                                                        focusNode: _model
                                                            .passwordFocusNode2,
                                                        autofocus: true,
                                                        autofillHints: const [
                                                          AutofillHints.password
                                                        ],
                                                        obscureText: !_model
                                                            .passwordVisibility2,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: 'Password',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          contentPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      24.0,
                                                                      0.0,
                                                                      24.0),
                                                          suffixIcon: InkWell(
                                                            onTap: () =>
                                                                setState(
                                                              () => _model
                                                                      .passwordVisibility2 =
                                                                  !_model
                                                                      .passwordVisibility2,
                                                            ),
                                                            focusNode: FocusNode(
                                                                skipTraversal:
                                                                    true),
                                                            child: Icon(
                                                              _model.passwordVisibility2
                                                                  ? Icons
                                                                      .visibility_outlined
                                                                  : Icons
                                                                      .visibility_off_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                        validator: _model
                                                            .passwordController2Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.00, 0.00),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          context.pushNamedAuth(
                                                              'Eligibilitypassed',
                                                              context.mounted);

                                                          GoRouter.of(context)
                                                              .prepareAuthEvent();

                                                          final user =
                                                              await authManager
                                                                  .signInWithEmail(
                                                            context,
                                                            _model
                                                                .emailAddressController1
                                                                .text,
                                                            _model
                                                                .passwordController1
                                                                .text,
                                                          );
                                                          if (user == null) {
                                                            return;
                                                          }
                                                        },
                                                        text: 'Sign In',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 230.0,
                                                          height: 52.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      40.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.00, 0.00),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  24.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          if (_model
                                                              .emailAddressController1
                                                              .text
                                                              .isEmpty) {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              const SnackBar(
                                                                content: Text(
                                                                  'Email required!',
                                                                ),
                                                              ),
                                                            );
                                                            return;
                                                          }
                                                          await authManager
                                                              .resetPassword(
                                                            email: _model
                                                                .emailAddressController1
                                                                .text,
                                                            context: context,
                                                          );
                                                        },
                                                        child: Text(
                                                          'Forgot Password !',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.00, 0.00),
                                                    child: Wrap(
                                                      spacing: 16.0,
                                                      runSpacing: 0.0,
                                                      alignment:
                                                          WrapAlignment.center,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .center,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.center,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              GoRouter.of(
                                                                      context)
                                                                  .prepareAuthEvent();
                                                              final user =
                                                                  await authManager
                                                                      .signInWithGoogle(
                                                                          context);
                                                              if (user ==
                                                                  null) {
                                                                return;
                                                              }

                                                              context.goNamedAuth(
                                                                  'Eligibilitypage',
                                                                  context
                                                                      .mounted);
                                                            },
                                                            text:
                                                                'Continue with Google',
                                                            icon: const FaIcon(
                                                              FontAwesomeIcons
                                                                  .google,
                                                              size: 20.0,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 230.0,
                                                              height: 44.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                              elevation: 0.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40.0),
                                                              hoverColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                            ),
                                                          ),
                                                        ),
                                                        isAndroid
                                                            ? Container()
                                                            : Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    GoRouter.of(
                                                                            context)
                                                                        .prepareAuthEvent();
                                                                    final user =
                                                                        await authManager
                                                                            .signInWithApple(context);
                                                                    if (user ==
                                                                        null) {
                                                                      return;
                                                                    }

                                                                    context.goNamedAuth(
                                                                        'Eligibilitypage',
                                                                        context
                                                                            .mounted);
                                                                  },
                                                                  text:
                                                                      'Continue with Apple',
                                                                  icon: const FaIcon(
                                                                    FontAwesomeIcons
                                                                        .apple,
                                                                    size: 20.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width:
                                                                        230.0,
                                                                    height:
                                                                        44.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            40.0),
                                                                    hoverColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                  ),
                                                                ),
                                                              ),
                                                      ],
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.00, 0.00),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          GoRouter.of(context)
                                                              .prepareAuthEvent();
                                                          final user =
                                                              await authManager
                                                                  .signInWithGoogle(
                                                                      context);
                                                          if (user == null) {
                                                            return;
                                                          }

                                                          context.goNamedAuth(
                                                              'Eligibilitypage',
                                                              context.mounted);
                                                        },
                                                        text:
                                                            'Forgot Password?',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 44.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      32.0,
                                                                      0.0,
                                                                      32.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                          elevation: 0.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      40.0),
                                                          hoverColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBackground,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'columnOnPageLoadAnimation2']!),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation']!),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
