  %! abjad.LilyPondFile._get_format_pieces()
\version "2.22.1"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"



\version "2.22.1"
\language "english"

\include "articulate.ly"

#(set-global-staff-size 19)

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
    composer = \markup { "Artyfyshall Byrd" }
    title = \markup { "A new way of making foure parts in counterpoint" }
    subtitle = \markup {"London, 1615"}
    copyright = \markup{ "Orpheus Institute, Resounding Libraries" }
    tagline = \markup {" Who’s Afraid of the Artyfyshall Byrd?, 2024 "}
}

%\include "oll-core/package.ily"
%\loadPackage lilypond-export

%opts.exporter = #exportMusicXML


  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    % OPEN_BRACKETS:
    {
        % OPEN_BRACKETS:
        \context ChoirStaff = "Choir"
        <<
            % OPEN_BRACKETS:
            \context Staff = "cantus"
            {
                % OPEN_BRACKETS:
                \context Voice = "cantus"
                {
                    % BEFORE:
                    % COMMANDS:
                    \key c \major
                    % OPENING:
                    % COMMANDS:
                    %%% \time 2/1 %%%
                    \clef "treble"
                    e'1
                    d'1
                    c'1
                    e'1
                    fs'1
                    g'1
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Staff = "altus"
            {
                % OPEN_BRACKETS:
                \context Voice = "altus"
                {
                    % BEFORE:
                    % COMMANDS:
                    \key c \major
                    % OPENING:
                    % COMMANDS:
                    %%% \time 2/1 %%%
                    \clef "treble_8"
                    c'1
                    a1
                    a1
                    b1
                    d'1
                    e'1
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Staff = "tenor"
            {
                % OPEN_BRACKETS:
                \context Voice = "tenor"
                {
                    % BEFORE:
                    % COMMANDS:
                    \key c \major
                    % OPENING:
                    % COMMANDS:
                    %%% \time 2/1 %%%
                    \clef "treble_8"
                    g1
                    fs1
                    es1
                    g1
                    a1
                    c'1
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Staff = "bassus"
            {
                % OPEN_BRACKETS:
                \context Voice = "bassus"
                {
                    % BEFORE:
                    % COMMANDS:
                    \key c \major
                    % OPENING:
                    % COMMANDS:
                    %%% \time 2/1 %%%
                    \clef "bass"
                    c1
                    d1
                    f1
                    e1
                    d1
                    c1
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        >>
    % CLOSE_BRACKETS:
    }


\midi{\tempo 2 = 100}   

\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #5
    \override StaffGrouper.staff-staff-spacing.basic-distance = #5
    \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #5
\override StaffGrouper.staffgroup-staff-spacing.padding = #5
  \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)

  }
  \context { \Voice \override NoteHead.style = #'baroque }
   \context {
    \Staff
    \RemoveEmptyStaves
  }
  \context{
    \Voice
    \RemoveEmptyStaves
  }
  \context {      \Dynamics
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.basic-distance = #10
    }

  %\FileExport #opts

}


  %! abjad.LilyPondFile._get_format_pieces()
}