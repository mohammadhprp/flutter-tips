import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart' hide SegmentedButton;
import 'package:google_fonts/google_fonts.dart';

import '../../../../_tips/tips_export.dart';
import '../../../../models/song/song.dart';
import '../../../../models/song/song_data.dart';
import '../segmented_button.dart';

class DownloadScreen extends StatelessWidget {
  static const routeName = '/components/buttons/segmented/example';
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: FlexThemeData.dark(
        useMaterial3: true,
        scheme: FlexScheme.mallardGreen,
        primary: ColorHex.fromHex('#1A1C18'),
        primaryContainer: ColorHex.fromHex('#43493E'),
        onPrimary: ColorHex.fromHex('#DCEBCE'),
        onPrimaryContainer: ColorHex.fromHex('#DCEBCE'),
        scaffoldBackground: ColorHex.fromHex('#1A1C18'),
        appBarBackground: ColorHex.fromHex('#1A1C18'),
        textTheme: GoogleFonts.interTightTextTheme(),
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your downloads',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: SegmentedButton(
                  onChanged: (String value) {
                    //
                  },
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView.separated(
                  itemCount: SongData.songList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 15);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final Song song = SongData.songList[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                song.cover,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: ListTile(
                              title: Text(song.name),
                              trailing: const SizedBox(
                                height: double.infinity,
                                child: Icon(
                                  Icons.play_circle_outlined,
                                  size: 30,
                                ),
                              ),
                              subtitle: Text(
                                "${song.size} MB",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
