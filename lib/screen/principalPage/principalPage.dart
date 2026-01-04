import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'principal_page_model.dart';
export 'principal_page_model.dart';

class PrincipalPageWidget extends StatefulWidget {
  const PrincipalPageWidget({super.key});

  static String routeName = 'PrincipalPage';
  static String routePath = '/principalPage';

  @override
  State<PrincipalPageWidget> createState() => _PrincipalPageWidgetState();
}

class _PrincipalPageWidgetState extends State<PrincipalPageWidget>
    with TickerProviderStateMixin {
  late PrincipalPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrincipalPageModel());

    animationsMap.addAll({
      'stackOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 1290.0.ms,
            duration: 1290.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 370.0.ms,
            duration: 600.0.ms,
            begin: 0.29,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 370.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Container(
        width: 398.9,
        height: 851.82,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: FlutterFlowTheme.of(context).alternate,
              offset: Offset(0, 2),
            ),
          ],
          gradient: LinearGradient(
            colors: [Color(0xFFF56C69), Color(0xFF8275F9)],
            stops: [0, 1],
            begin: AlignmentDirectional(0, -1),
            end: AlignmentDirectional(0, 1),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Stack(
                      children: [
                        Container(
                          width: 413.1,
                          height: 518.8,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 12,
                                color: Color(0x33000000),
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 5,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              MasonryGridView.builder(
                                gridDelegate:
                                    SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                    ),
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 3,
                                itemCount: 12,
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return [
                                    () => ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
                                      ),
                                      child: Image.asset(
                                        'assets/images/parejas9.png',
                                        width: 200,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    () => ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/parejas7.png',
                                        width: 200,
                                        height: 144,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    () => ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/parejas4.png',
                                        width: 200,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    () => ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/parejas3.png',
                                        width: 200,
                                        height: 137.3,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    () => ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/parejas1.png',
                                        width: 200,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    () => ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/parejas5.png',
                                        width: 200,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    () => ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/parejas6.png',
                                        width: 200,
                                        height: 191.71,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    () => ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/parejas8.png',
                                        width: 200,
                                        height: 186.57,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    () => ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/parejas14.png',
                                        width: 200,
                                        height: 167.18,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    () => ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/parejas12.png',
                                        width: 200,
                                        height: 158.65,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    () => ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/parejas13.png',
                                        width: 200,
                                        height: 120.45,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    () => ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/parejas2.png',
                                        width: 200,
                                        height: 114.93,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ][index]();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(animationsMap['stackOnPageLoadAnimation']!),
                  ),
                ],
              ),
            ),
            Container(
              width: 394.7,
              height: 514.97,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/LogoProtolove.png',
                      width: 198.8,
                      height: 195.6,
                      fit: BoxFit.contain,
                    ),
                  ).animateOnPageLoad(
                    animationsMap['imageOnPageLoadAnimation']!,
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      FFLocalizations.of(
                        context,
                      ).getText('62qy7yw2' /* PROTOLOVE */),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w900,
                          fontStyle: FlutterFlowTheme.of(
                            context,
                          ).bodyLarge.fontStyle,
                        ),
                        color: Color(0xFBC1B6FF),
                        fontSize: 50,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                        fontStyle: FlutterFlowTheme.of(
                          context,
                        ).bodyLarge.fontStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
            Align(
              alignment: AlignmentDirectional(0.08, 0.98),
              child: Container(
                width: 358.6,
                height: 197.9,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 334.1,
                          height: 29.1,
                          decoration: BoxDecoration(),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'pbv5mh6a' /* ________________________  o  _... */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(
                                      context,
                                    ).bodyMedium.fontWeight,
                                    fontStyle: FlutterFlowTheme.of(
                                      context,
                                    ).bodyMedium.fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).alternate,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(
                                    context,
                                  ).bodyMedium.fontWeight,
                                  fontStyle: FlutterFlowTheme.of(
                                    context,
                                  ).bodyMedium.fontStyle,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 1),
                          child: Padding(
                            padding: EdgeInsets.all(18),
                            child: Container(
                              width: 330,
                              height: 50,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                shape: BoxShape.rectangle,
                              ),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(LoginPageWidget.routeName);
                                },
                                text: FFLocalizations.of(
                                  context,
                                ).getText('ktlpicxx' /* Continuar */),
                                icon: Icon(
                                  Icons.arrow_circle_right_rounded,
                                  size: 15,
                                ),
                                options: FFButtonOptions(
                                  height: 32.6,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    16,
                                    0,
                                    16,
                                    0,
                                  ),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0,
                                    0,
                                    0,
                                    0,
                                  ),
                                  color: Color(0xFFFF7C6C),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FlutterFlowTheme.of(
                                            context,
                                          ).titleSmall.fontWeight,
                                          fontStyle: FlutterFlowTheme.of(
                                            context,
                                          ).titleSmall.fontStyle,
                                        ),
                                        color: Colors.white,
                                        fontSize: 16,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(
                                          context,
                                        ).titleSmall.fontWeight,
                                        fontStyle: FlutterFlowTheme.of(
                                          context,
                                        ).titleSmall.fontStyle,
                                      ),
                                  elevation: 0,
                                  borderRadius: BorderRadius.circular(20),
                                  hoverColor: Color(0xFFA195F6),
                                ),
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
            Align(
              alignment: AlignmentDirectional(0.05, 0.39),
              child: Text(
                FFLocalizations.of(
                  context,
                ).getText('161to3dp' /* Define tu prototipo de pareja */),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FlutterFlowTheme.of(
                      context,
                    ).headlineMedium.fontWeight,
                    fontStyle: FlutterFlowTheme.of(
                      context,
                    ).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 22,
                  letterSpacing: 0.0,
                  fontWeight: FlutterFlowTheme.of(
                    context,
                  ).headlineMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(
                    context,
                  ).headlineMedium.fontStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
