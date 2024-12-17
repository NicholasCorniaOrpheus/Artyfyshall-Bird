
\version "2.22.1"
\language "english"

\include "articulate.ly"

#(set-global-staff-size 17.5)

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
    composer = \markup { "Gustav Gerlach (1791-1831)" }
    title = \markup { "Kunst, Schottische Tënze zu componiren, ohne musicalisch zu sein" }
    subtitle = \markup{ "Berlin, c.1830" }
    copyright = \markup{ "Orpheus Institute, Resounding Libraries" }
    tagline = \markup {" Who’s Afraid of the Artyfyshall Byrd?, 2024 "}
}

%\include "oll-core/package.ily"
%\loadPackage lilypond-export

%opts.exporter = #exportMusicXML