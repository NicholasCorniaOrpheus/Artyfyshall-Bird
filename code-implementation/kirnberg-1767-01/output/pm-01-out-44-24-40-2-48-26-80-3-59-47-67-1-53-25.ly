\include "../paper_settings.ly" 
\header { piece = \markup "[44-24-40-2-48-26-80-3-59-47-67-1-53-25]" }

  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<
    \new StaffGroup
    <<
    %Violin1
    \context Staff = "violin1" \with { instrumentName = "Viol. 1" }
    <<
    \set Staff.midiInstrument =#"violin" {
    \include "../voice_option.ly"
    \bar".|:"
    \mark \markup{Ersten Theile}
    \include "../violin1/pm-01-vln1-44.ly"
    \include "../violin1/pm-01-vln1-24.ly"
    \include "../violin1/pm-01-vln1-40.ly"
    \include "../violin1/pm-01-vln1-2.ly"
    \include "../violin1/pm-01-vln1-48.ly"
    \include "../violin1/pm-01-vln1-26.ly"
    \bar":|.|:"
    \break
    \mark \markup{Zwenten Theile}
    \include "../violin1/pm-01-vln1-80.ly"
    \include "../violin1/pm-01-vln1-3.ly"
    \include "../violin1/pm-01-vln1-59.ly"
    \include "../violin1/pm-01-vln1-47.ly"
    \include "../violin1/pm-01-vln1-67.ly"
    \include "../violin1/pm-01-vln1-1.ly"
    \include "../violin1/pm-01-vln1-53.ly"
    \include "../violin1/pm-01-vln1-25.ly"
    \bar":|."
    }
    >>
    %Violin2
    \context Staff = "violin2" \with { instrumentName = "Viol. 2" }
    <<
    \set Staff.midiInstrument =#"violin" {
    \include "../voice_option.ly"
    \include "../violin2/pm-01-vln2-44.ly"
    \include "../violin2/pm-01-vln2-24.ly"
    \include "../violin2/pm-01-vln2-40.ly"
    \include "../violin2/pm-01-vln2-2.ly"
    \include "../violin2/pm-01-vln2-48.ly"
    \include "../violin2/pm-01-vln2-26.ly"
    \include "../violin2/pm-01-vln2-80.ly"
    \include "../violin2/pm-01-vln2-3.ly"
    \include "../violin2/pm-01-vln2-59.ly"
    \include "../violin2/pm-01-vln2-47.ly"
    \include "../violin2/pm-01-vln2-67.ly"
    \include "../violin2/pm-01-vln2-1.ly"
    \include "../violin2/pm-01-vln2-53.ly"
    \include "../violin2/pm-01-vln2-25.ly"
    }
    >>
    >>
    %Harpsichord part
    \context PianoStaff \with { instrumentName = "Clav." midiInstrument =#"harpsichord"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    <<{\include "../violin1/pm-01-vln1-44.ly" } \\ { \include "../violin2/pm-01-vln2-44.ly" } >>
    <<{\include "../violin1/pm-01-vln1-24.ly" } \\ { \include "../violin2/pm-01-vln2-24.ly" } >>
    <<{\include "../violin1/pm-01-vln1-40.ly" } \\ { \include "../violin2/pm-01-vln2-40.ly" } >>
    <<{\include "../violin1/pm-01-vln1-2.ly" } \\ { \include "../violin2/pm-01-vln2-2.ly" } >>
    <<{\include "../violin1/pm-01-vln1-48.ly" } \\ { \include "../violin2/pm-01-vln2-48.ly" } >>
    <<{\include "../violin1/pm-01-vln1-26.ly" } \\ { \include "../violin2/pm-01-vln2-26.ly" } >>
    <<{\include "../violin1/pm-01-vln1-80.ly" } \\ { \include "../violin2/pm-01-vln2-80.ly" } >>
    <<{\include "../violin1/pm-01-vln1-3.ly" } \\ { \include "../violin2/pm-01-vln2-3.ly" } >>
    <<{\include "../violin1/pm-01-vln1-59.ly" } \\ { \include "../violin2/pm-01-vln2-59.ly" } >>
    <<{\include "../violin1/pm-01-vln1-47.ly" } \\ { \include "../violin2/pm-01-vln2-47.ly" } >>
    <<{\include "../violin1/pm-01-vln1-67.ly" } \\ { \include "../violin2/pm-01-vln2-67.ly" } >>
    <<{\include "../violin1/pm-01-vln1-1.ly" } \\ { \include "../violin2/pm-01-vln2-1.ly" } >>
    <<{\include "../violin1/pm-01-vln1-53.ly" } \\ { \include "../violin2/pm-01-vln2-53.ly" } >>
    <<{\include "../violin1/pm-01-vln1-25.ly" } \\ { \include "../violin2/pm-01-vln2-25.ly" } >>
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/pm-01-lh-44.ly"
    \include "../lh/pm-01-lh-24.ly"
    \include "../lh/pm-01-lh-40.ly"
    \include "../lh/pm-01-lh-2.ly"
    \include "../lh/pm-01-lh-48.ly"
    \include "../lh/pm-01-lh-26.ly"
    \include "../lh/pm-01-lh-80.ly"
    \include "../lh/pm-01-lh-3.ly"
    \include "../lh/pm-01-lh-59.ly"
    \include "../lh/pm-01-lh-47.ly"
    \include "../lh/pm-01-lh-67.ly"
    \include "../lh/pm-01-lh-1.ly"
    \include "../lh/pm-01-lh-53.ly"
    \include "../lh/pm-01-lh-25.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}