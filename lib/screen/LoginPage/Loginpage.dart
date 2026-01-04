import '/auth/supabase_auth/auth_util.dart';
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
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  static String routeName = 'LoginPage';
  static String routePath = '/loginPag';

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 150.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: Offset(-0.349, 0),
            end: Offset(0, 0),
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).primary,
                            FlutterFlowTheme.of(context).error,
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
                            colors: [
                              Color(0x00FFFFFF),
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ],
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
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent4,
                                borderRadius: BorderRadius.circular(16),
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
                              animationsMap['containerOnPageLoadAnimation']!,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                12,
                                0,
                                0,
                              ),
                              child:
                                  Text(
                                    FFLocalizations.of(
                                      context,
                                    ).getText('95qpezio' /* Iniciar sesiÃ³n */),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FlutterFlowTheme.of(
                                              context,
                                            ).headlineSmall.fontWeight,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).headlineSmall.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterFlowTheme.of(
                                            context,
                                          ).headlineSmall.fontWeight,
                                          fontStyle: FlutterFlowTheme.of(
                                            context,
                                          ).headlineSmall.fontStyle,
                                        ),
                                  ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation1']!,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                4,
                                0,
                                0,
                              ),
                              child:
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'slqtnsu3' /* Utiliza la cuenta siguiente pa... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FlutterFlowTheme.of(
                                              context,
                                            ).labelMedium.fontWeight,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).labelMedium.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterFlowTheme.of(
                                            context,
                                          ).labelMedium.fontWeight,
                                          fontStyle: FlutterFlowTheme.of(
                                            context,
                                          ).labelMedium.fontStyle,
                                        ),
                                  ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation2']!,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                0,
                                0,
                                16,
                              ),
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.emailAddressTextController,
                                  focusNode: _model.emailAddressFocusNode,
                                  autofocus: true,
                                  autofillHints: [AutofillHints.email],
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: FFLocalizations.of(
                                      context,
                                    ).getText('fbh0nguw' /* Correo */),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FlutterFlowTheme.of(
                                              context,
                                            ).labelMedium.fontWeight,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).labelMedium.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterFlowTheme.of(
                                            context,
                                          ).labelMedium.fontWeight,
                                          fontStyle: FlutterFlowTheme.of(
                                            context,
                                          ).labelMedium.fontStyle,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(
                                          context,
                                        ).alternate,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(
                                          context,
                                        ).primary,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(
                                          context,
                                        ).error,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(
                                          context,
                                        ).error,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(
                                      context,
                                    ).secondaryBackground,
                                    contentPadding: EdgeInsets.all(24),
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
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.fontWeight,
                                        fontStyle: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.fontStyle,
                                      ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: _model
                                      .emailAddressTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                0,
                                0,
                                16,
                              ),
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.passwordTextController,
                                  focusNode: _model.passwordFocusNode,
                                  autofocus: false,
                                  autofillHints: [AutofillHints.password],
                                  obscureText: !_model.passwordVisibility,
                                  decoration: InputDecoration(
                                    labelText: FFLocalizations.of(
                                      context,
                                    ).getText('pwosndhl' /* ContraseÃ±a */),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FlutterFlowTheme.of(
                                              context,
                                            ).labelMedium.fontWeight,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).labelMedium.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterFlowTheme.of(
                                            context,
                                          ).labelMedium.fontWeight,
                                          fontStyle: FlutterFlowTheme.of(
                                            context,
                                          ).labelMedium.fontStyle,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(
                                          context,
                                        ).alternate,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(
                                          context,
                                        ).primary,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(
                                          context,
                                        ).error,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(
                                          context,
                                        ).error,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(
                                      context,
                                    ).secondaryBackground,
                                    contentPadding: EdgeInsets.all(24),
                                    suffixIcon: InkWell(
                                      onTap: () => safeSetState(
                                        () => _model.passwordVisibility =
                                            !_model.passwordVisibility,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        _model.passwordVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: FlutterFlowTheme.of(
                                          context,
                                        ).secondaryText,
                                        size: 24,
                                      ),
                                    ),
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
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.fontWeight,
                                        fontStyle: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.fontStyle,
                                      ),
                                  validator: _model
                                      .passwordTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  0,
                                  0,
                                  0,
                                  16,
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onDoubleTap: () async {
                                    FFAppState().msg = 'Create el validar';
                                    FFAppState().color = FlutterFlowTheme.of(
                                      context,
                                    ).primaryBackground;
                                    FFAppState().showsnackbar = true;
                                    safeSetState(() {});
                                  },
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      GoRouter.of(context).prepareAuthEvent();

                                      final user = await authManager
                                          .signInWithEmail(
                                            context,
                                            _model
                                                .emailAddressTextController
                                                .text,
                                            _model.passwordTextController.text,
                                          );
                                      if (user == null) {
                                        return;
                                      }

                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            '',
                                            style: TextStyle(
                                              color: FlutterFlowTheme.of(
                                                context,
                                              ).primaryText,
                                              shadows: [
                                                Shadow(
                                                  color: FlutterFlowTheme.of(
                                                    context,
                                                  ).secondaryText,
                                                  offset: Offset(2.0, 2.0),
                                                  blurRadius: 2.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          duration: Duration(
                                            milliseconds: 4000,
                                          ),
                                          backgroundColor: FlutterFlowTheme.of(
                                            context,
                                          ).primaryBackground,
                                        ),
                                      );

                                      context.goNamedAuth(
                                        PrincipalPageWidget.routeName,
                                        context.mounted,
                                      );
                                    },
                                    text: FFLocalizations.of(
                                      context,
                                    ).getText('lgzmyf9m' /* Iniciar sesiÃ³n */),
                                    options: FFButtonOptions(
                                      width: 230,
                                      height: 52,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        0,
                                        0,
                                        0,
                                        0,
                                      ),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                            0,
                                            0,
                                            0,
                                            0,
                                          ),
                                      color: FlutterFlowTheme.of(
                                        context,
                                      ).primary,
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
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterFlowTheme.of(
                                              context,
                                            ).titleSmall.fontWeight,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).titleSmall.fontStyle,
                                          ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  0,
                                  0,
                                  0,
                                  16,
                                ),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'afaupqz1' /* Has olvidado tu contraseÃ±a */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 230,
                                    height: 44,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      0,
                                      0,
                                      0,
                                      0,
                                    ),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0,
                                      0,
                                      0,
                                      0,
                                    ),
                                    color: FlutterFlowTheme.of(
                                      context,
                                    ).secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.fontWeight,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(
                                            context,
                                          ).primary,
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterFlowTheme.of(
                                            context,
                                          ).bodyMedium.fontWeight,
                                          fontStyle: FlutterFlowTheme.of(
                                            context,
                                          ).bodyMedium.fontStyle,
                                        ),
                                    elevation: 0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(
                                        context,
                                      ).secondaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      16,
                                      0,
                                      16,
                                      24,
                                    ),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'gdptz785' /* O usa tu cuenta de */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FlutterFlowTheme.of(
                                                context,
                                              ).labelMedium.fontWeight,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).labelMedium.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterFlowTheme.of(
                                              context,
                                            ).labelMedium.fontWeight,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).labelMedium.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      0,
                                      0,
                                      0,
                                      16,
                                    ),
                                    child: Wrap(
                                      spacing: 16,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.center,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.center,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0,
                                                0,
                                                0,
                                                16,
                                              ),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                                  'd7of7azh' /* Continuar con Google */,
                                                ),
                                            icon: FaIcon(
                                              FontAwesomeIcons.google,
                                              size: 20,
                                            ),
                                            options: FFButtonOptions(
                                              width: 230,
                                              height: 44,
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    0,
                                                    0,
                                                    0,
                                                    0,
                                                  ),
                                              iconPadding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    0,
                                                    0,
                                                    0,
                                                    0,
                                                  ),
                                              color: FlutterFlowTheme.of(
                                                context,
                                              ).secondaryBackground,
                                              textStyle:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).bodyMedium.override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                context,
                                                              )
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).bodyMedium.fontStyle,
                                                  ),
                                              elevation: 0,
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme.of(
                                                  context,
                                                ).alternate,
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              hoverColor: FlutterFlowTheme.of(
                                                context,
                                              ).primaryBackground,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      0,
                                      0,
                                      0,
                                      16,
                                    ),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                          RegisterPageWidget.routeName,
                                        );
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'anjmmmma' /* RegÃ­strate aquÃ­ ! */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 230,
                                        height: 44,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          0,
                                          0,
                                          0,
                                          0,
                                        ),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                              0,
                                              0,
                                              0,
                                              0,
                                            ),
                                        color: FlutterFlowTheme.of(
                                          context,
                                        ).secondaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FlutterFlowTheme.of(
                                                  context,
                                                ).bodyMedium.fontWeight,
                                                fontStyle: FlutterFlowTheme.of(
                                                  context,
                                                ).bodyMedium.fontStyle,
                                              ),
                                              color: FlutterFlowTheme.of(
                                                context,
                                              ).primary,
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.fontWeight,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.fontStyle,
                                            ),
                                        elevation: 0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(
                                            context,
                                          ).secondaryBackground,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
