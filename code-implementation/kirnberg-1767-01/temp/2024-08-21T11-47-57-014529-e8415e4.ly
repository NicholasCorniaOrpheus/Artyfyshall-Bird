\include "../paper_settings.ly" 
\header { piece = \markup "[13-7-64-53-41-3-71-48-4-76-21-9-1-51-66-24]" }

  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<
    \new StaffGroup
    <<
    %Violin1
    \context Staff = "violin1" \with { instrumentName = "Violini unis." }
    <<
    \set Staff.midiInstrument =#"violin" {
    \include "../voice_option.ly"
    \bar".|:"
    \mark \markup{Premiere Partie}
    \include "../violin1/pm-02-vln1-13.ly"
    \include "../violin1/pm-02-vln1-7.ly"
    \include "../violin1/pm-02-vln1-64.ly"
    \include "../violin1/pm-02-vln1-53.ly"
    \include "../violin1/pm-02-vln1-41.ly"
    \include "../violin1/pm-02-vln1-3.ly"
    \include "../violin1/pm-02-vln1-71.ly"
    \include "../violin1/pm-02-vln1-48.ly"
    \bar":|.|:"
    \break
    \mark \markup{Seconde Partie}
    \include "../violin1/pm-02-vln1-4.ly"
    \include "../violin1/pm-02-vln1-76.ly"
    \include "../violin1/pm-02-vln1-21.ly"
    \include "../violin1/pm-02-vln1-9.ly"
    \include "../violin1/pm-02-vln1-1.ly"
    \include "../violin1/pm-02-vln1-51.ly"
    \include "../violin1/pm-02-vln1-66.ly"
    \include "../violin1/pm-02-vln1-24.ly"
    \bar":|."
    }
    >>
    %Harpsichord part
    \context PianoStaff \with { instrumentName = "Clav." midiInstrument=#"harpsichord"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/pm-02-rh-13.ly"
    \include "../rh/pm-02-rh-7.ly"
    \include "../rh/pm-02-rh-64.ly"
    \include "../rh/pm-02-rh-53.ly"
    \include "../rh/pm-02-rh-41.ly"
    \include "../rh/pm-02-rh-3.ly"
    \include "../rh/pm-02-rh-71.ly"
    \include "../rh/pm-02-rh-48.ly"
    \include "../rh/pm-02-rh-4.ly"
    \include "../rh/pm-02-rh-76.ly"
    \include "../rh/pm-02-rh-21.ly"
    \include "../rh/pm-02-rh-9.ly"
    \include "../rh/pm-02-rh-1.ly"
    \include "../rh/pm-02-rh-51.ly"
    \include "../rh/pm-02-rh-66.ly"
    \include "../rh/pm-02-rh-24.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/pm-02-lh-13.ly"
    \include "../lh/pm-02-lh-7.ly"
    \include "../lh/pm-02-lh-64.ly"
    \include "../lh/pm-02-lh-53.ly"
    \include "../lh/pm-02-lh-41.ly"
    \include "../lh/pm-02-lh-3.ly"
    \include "../lh/pm-02-lh-71.ly"
    \include "../lh/pm-02-lh-48.ly"
    \include "../lh/pm-02-lh-4.ly"
    \include "../lh/pm-02-lh-76.ly"
    \include "../lh/pm-02-lh-21.ly"
    \include "../lh/pm-02-lh-9.ly"
    \include "../lh/pm-02-lh-1.ly"
    \include "../lh/pm-02-lh-51.ly"
    \include "../lh/pm-02-lh-66.ly"
    \include "../lh/pm-02-lh-24.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}