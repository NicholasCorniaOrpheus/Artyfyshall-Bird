
\version "2.22.1"
\language "english"

\include "articulate.ly"

#(set-global-staff-size 18)

\paper {
 top-system-spacing.basic-distance = #10
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #10
horizontal-shift = #7
top-margin = 1.5 \cm
bottom-margin = 1 \cm
left-margin = 1.8 \cm
right-margin = 1.8 \cm
%#(define fonts
 %   (set-global-fonts
    %#:roman "Humanistic"
%#:sans ""
   % )
  %)

}


\header {
    composer = \markup { "Anonymous 18th century" }
    title = \markup { "Ludus Melothedicus ou le jeu de dez harmonique" }
    subtitle = \markup{ "Paris, 1758" }
    copyright = \markup{ "Orpheus Institute, Resounding Libraries" }
    tagline = \markup {" Who’s Afraid of the Artyfyshall Byrd?, 2023 "}
}

%\include "oll-core/package.ily"
%\loadPackage lilypond-export

%opts.exporter = #exportMusicXML