\include "../paper_settings.ly" 
\header { piece = \markup "[10-6-50-46-22-58]" }

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
    \include "../violin1/pm-01-vln1-10.ly"
    \include "../violin1/pm-01-vln1-6.ly"
    \include "../violin1/pm-01-vln1-50.ly"
    \include "../violin1/pm-01-vln1-46.ly"
    \include "../violin1/pm-01-vln1-22.ly"
    \include "../violin1/pm-01-vln1-58.ly"
    }
    >>
    %Violin2
    \context Staff = "violin2" \with { instrumentName = "Viol. 2" }
    <<
    \set Staff.midiInstrument =#"violin" {
    \include "../voice_option.ly"
    \include "../violin2/pm-01-vln2-10.ly"
    \include "../violin2/pm-01-vln2-6.ly"
    \include "../violin2/pm-01-vln2-50.ly"
    \include "../violin2/pm-01-vln2-46.ly"
    \include "../violin2/pm-01-vln2-22.ly"
    \include "../violin2/pm-01-vln2-58.ly"
    }
    >>
    >>
    %Harpsichord part
    \context PianoStaff \with { instrumentName = "Clav."}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    <<{\include "../violin1/pm-01-vln1-10.ly" } \\ { \include "../violin2/pm-01-vln2-10.ly" } >>
    <<{\include "../violin1/pm-01-vln1-6.ly" } \\ { \include "../violin2/pm-01-vln2-6.ly" } >>
    <<{\include "../violin1/pm-01-vln1-50.ly" } \\ { \include "../violin2/pm-01-vln2-50.ly" } >>
    <<{\include "../violin1/pm-01-vln1-46.ly" } \\ { \include "../violin2/pm-01-vln2-46.ly" } >>
    <<{\include "../violin1/pm-01-vln1-22.ly" } \\ { \include "../violin2/pm-01-vln2-22.ly" } >>
    <<{\include "../violin1/pm-01-vln1-58.ly" } \\ { \include "../violin2/pm-01-vln2-58.ly" } >>
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/pm-01-lh-10.ly"
    \include "../lh/pm-01-lh-6.ly"
    \include "../lh/pm-01-lh-50.ly"
    \include "../lh/pm-01-lh-46.ly"
    \include "../lh/pm-01-lh-22.ly"
    \include "../lh/pm-01-lh-58.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}