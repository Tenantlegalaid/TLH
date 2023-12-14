import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.00, 0.00),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Blue_Minimalist_House_Care_Building_Logo-2.png',
                  width: 256.0,
                  height: 239.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tenant Legal Help',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Playfair Display',
                        color: const Color(0xFF2247D6),
                      ),
                ),
              ],
            ),
            Container(
              width: 339.0,
              height: 387.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Text(
                  'If you are a Southwark or Lambeth tenant facing eviction for rent arrears, first and foremost, make sure you attend your court hearing on the date and time you were allocated on the letter you were given. We will help you with the rest, in terms of, finding out if you are elegible for financial aid, finding you local lawyers, and generating a report for your case.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Lato',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 21.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.00, 0.00),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('sign');
                },
                text: 'Get Started',
                options: FFButtonOptions(
                  width: 300.0,
                  height: 60.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFF2247D6),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
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
    );
  }
}
