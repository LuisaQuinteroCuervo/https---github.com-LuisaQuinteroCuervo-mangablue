import '../flutter_flow/flutter_flow_pdf_viewer.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Capitulo1Widget extends StatefulWidget {
  const Capitulo1Widget({Key? key}) : super(key: key);

  @override
  _Capitulo1WidgetState createState() => _Capitulo1WidgetState();
}

class _Capitulo1WidgetState extends State<Capitulo1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF04253A),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                child: Text(
                  'Capitulo 1\n\n Kamisama Kiss',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF4C837A),
                        fontSize: 30,
                      ),
                ),
              ),
              Divider(
                height: 10,
                thickness: 1,
                indent: 10,
                endIndent: 10,
                color: Color(0xFFE1DDBF),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: FlutterFlowPdfViewer(
                  assetPath: 'assets/pdfs/Cpaitulo_1_compressed.pdf',
                  height: 500,
                  horizontalScroll: false,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 120, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('Manga_view');
                      },
                      text: 'Atras',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0xFF04253A),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF4C837A),
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Text(
                    'MangaBlue',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF4C837A),
                          fontSize: 18,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
