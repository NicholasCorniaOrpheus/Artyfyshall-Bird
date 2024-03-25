\include "../paper_settings.ly" 
\header { piece = \markup "[42-6-4-28-52-54-82-3-29-35-61-57-81-23]" }

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
    \include "../violin1/pm-01-vln1-42.ly"
    \include "../violin1/pm-01-vln1-6.ly"
    \include "../violin1/pm-01-vln1-4.ly"
    \include "../violin1/pm-01-vln1-28.ly"
    \include "../violin1/pm-01-vln1-52.ly"
    \include "../violin1/pm-01-vln1-54.ly"
    \bar":|.|:"
    \break
    \mark \markup{Zwenten Theile}
    \include "../violin1/pm-01-vln1-82.ly"
    \include "../violin1/pm-01-vln1-3.ly"
    \include "../violin1/pm-01-vln1-29.ly"
    \include "../violin1/pm-01-vln1-35.ly"
    \include "../violin1/pm-01-vln1-61.ly"
    \include "../violin1/pm-01-vln1-57.ly"
    \include "../violin1/pm-01-vln1-81.ly"
    \include "../violin1/pm-01-vln1-23.ly"
    \bar":|."
    }
    >>
    %Violin2
    \context Staff = "violin2" \with { instrumentName = "Viol. 2" }
    <<
    \set Staff.midiInstrument =#"violin" {
    \include "../voice_option.ly"
    \include "../violin2/pm-01-vln2-42.ly"
    \include "../violin2/pm-01-vln2-6.ly"
    \include "../violin2/pm-01-vln2-4.ly"
    \include "../violin2/pm-01-vln2-28.ly"
    \include "../violin2/pm-01-vln2-52.ly"
    \include "../violin2/pm-01-vln2-54.ly"
    \include "../violin2/pm-01-vln2-82.ly"
    \include "../violin2/pm-01-vln2-3.ly"
    \include "../violin2/pm-01-vln2-29.ly"
    \include "../violin2/pm-01-vln2-35.ly"
    \include "../violin2/pm-01-vln2-61.ly"
    \include "../violin2/pm-01-vln2-57.ly"
    \include "../violin2/pm-01-vln2-81.ly"
    \include "../violin2/pm-01-vln2-23.ly"
    }
    >>
    >>
    %Harpsichord part
    \context PianoStaff \with { instrumentName = "Clav." midiInstrument =#"harpsichord"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    <<{\include "../violin1/pm-01-vln1-42.ly" } \\ { \include "../violin2/pm-01-vln2-42.ly" } >>
    <<{\include "../violin1/pm-01-vln1-6.ly" } \\ { \include "../violin2/pm-01-vln2-6.ly" } >>
    <<{\include "../violin1/pm-01-vln1-4.ly" } \\ { \include "../violin2/pm-01-vln2-4.ly" } >>
    <<{\include "../violin1/pm-01-vln1-28.ly" } \\ { \include "../violin2/pm-01-vln2-28.ly" } >>
    <<{\include "../violin1/pm-01-vln1-52.ly" } \\ { \include "../violin2/pm-01-vln2-52.ly" } >>
    <<{\include "../violin1/pm-01-vln1-54.ly" } \\ { \include "../violin2/pm-01-vln2-54.ly" } >>
    <<{\include "../violin1/pm-01-vln1-82.ly" } \\ { \include "../violin2/pm-01-vln2-82.ly" } >>
    <<{\include "../violin1/pm-01-vln1-3.ly" } \\ { \include "../violin2/pm-01-vln2-3.ly" } >>
    <<{\include "../violin1/pm-01-vln1-29.ly" } \\ { \include "../violin2/pm-01-vln2-29.ly" } >>
    <<{\include "../violin1/pm-01-vln1-35.ly" } \\ { \include "../violin2/pm-01-vln2-35.ly" } >>
    <<{\include "../violin1/pm-01-vln1-61.ly" } \\ { \include "../violin2/pm-01-vln2-61.ly" } >>
    <<{\include "../violin1/pm-01-vln1-57.ly" } \\ { \include "../violin2/pm-01-vln2-57.ly" } >>
    <<{\include "../violin1/pm-01-vln1-81.ly" } \\ { \include "../violin2/pm-01-vln2-81.ly" } >>
    <<{\include "../violin1/pm-01-vln1-23.ly" } \\ { \include "../violin2/pm-01-vln2-23.ly" } >>
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/pm-01-lh-42.ly"
    \include "../lh/pm-01-lh-6.ly"
    \include "../lh/pm-01-lh-4.ly"
    \include "../lh/pm-01-lh-28.ly"
    \include "../lh/pm-01-lh-52.ly"
    \include "../lh/pm-01-lh-54.ly"
    \include "../lh/pm-01-lh-82.ly"
    \include "../lh/pm-01-lh-3.ly"
    \include "../lh/pm-01-lh-29.ly"
    \include "../lh/pm-01-lh-35.ly"
    \include "../lh/pm-01-lh-61.ly"
    \include "../lh/pm-01-lh-57.ly"
    \include "../lh/pm-01-lh-81.ly"
    \include "../lh/pm-01-lh-23.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}