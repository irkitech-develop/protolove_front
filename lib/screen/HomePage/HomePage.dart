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
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(Duration(milliseconds: 3000));
      if (Navigator.of(context).canPop()) {
        context.pop();
      }
      context.pushNamed(PrincipalPageWidget.routeName);
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(3.0, 3.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.6, 0.6),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 350.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 30.0),
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
        width: 401.5,
        height: 861.84,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).primary,
              FlutterFlowTheme.of(context).primaryText,
            ],
            stops: [0, 1],
            begin: AlignmentDirectional(0, -1),
            end: AlignmentDirectional(0, 1),
          ),
        ),
        child: Container(
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0x4CABA3FF),
                Color(0xFFFEABAB),
                FlutterFlowTheme.of(context).tertiary,
              ],
              stops: [0, 0.5, 1],
              begin: AlignmentDirectional(-1, -1),
              end: AlignmentDirectional(1, 1),
            ),
          ),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x00FFFFFF), Color(0xC0FFFFFF)],
                stops: [0, 1],
                begin: AlignmentDirectional(0, -1),
                end: AlignmentDirectional(0, 1),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 238.7,
                  height: 227.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    shape: BoxShape.rectangle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/LogoProtolove.png',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation2']!,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                  child:
                      Text(
                        FFLocalizations.of(
                          context,
                        ).getText('sze635rm' /* PROTOLOVE */),
                        style: FlutterFlowTheme.of(context).displayLarge
                            .override(
                              font: GoogleFonts.interTight(
                                fontWeight: FlutterFlowTheme.of(
                                  context,
                                ).displayLarge.fontWeight,
                                fontStyle: FlutterFlowTheme.of(
                                  context,
                                ).displayLarge.fontStyle,
                              ),
                              color: Color(0xFBA797F6),
                              fontSize: 50,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(
                                context,
                              ).displayLarge.fontWeight,
                              fontStyle: FlutterFlowTheme.of(
                                context,
                              ).displayLarge.fontStyle,
                            ),
                      ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation']!,
                      ),
                ),
              ],
            ),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
      ),
    );
  }
}
