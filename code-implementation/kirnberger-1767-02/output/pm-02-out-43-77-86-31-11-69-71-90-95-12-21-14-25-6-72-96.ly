\include "../paper_settings.ly" 
\header { piece = \markup "[43-77-86-31-11-69-71-90-95-12-21-14-25-6-72-96]" }

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
    \include "../violin1/pm-02-vln1-43.ly"
    \include "../violin1/pm-02-vln1-77.ly"
    \include "../violin1/pm-02-vln1-86.ly"
    \include "../violin1/pm-02-vln1-31.ly"
    \include "../violin1/pm-02-vln1-11.ly"
    \include "../violin1/pm-02-vln1-69.ly"
    \include "../violin1/pm-02-vln1-71.ly"
    \include "../violin1/pm-02-vln1-90.ly"
    \bar":|.|:"
    \break
    \mark \markup{Seconde Partie}
    \include "../violin1/pm-02-vln1-95.ly"
    \include "../violin1/pm-02-vln1-12.ly"
    \include "../violin1/pm-02-vln1-21.ly"
    \include "../violin1/pm-02-vln1-14.ly"
    \include "../violin1/pm-02-vln1-25.ly"
    \include "../violin1/pm-02-vln1-6.ly"
    \include "../violin1/pm-02-vln1-72.ly"
    \include "../violin1/pm-02-vln1-96.ly"
    \bar":|."
    }
    >>
    >>
    %Harpsichord part
    \context PianoStaff \with { instrumentName = "Clav." midiInstrument=#"harpsichord"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/pm-02-rh-43.ly"
    \include "../rh/pm-02-rh-77.ly"
    \include "../rh/pm-02-rh-86.ly"
    \include "../rh/pm-02-rh-31.ly"
    \include "../rh/pm-02-rh-11.ly"
    \include "../rh/pm-02-rh-69.ly"
    \include "../rh/pm-02-rh-71.ly"
    \include "../rh/pm-02-rh-90.ly"
    \include "../rh/pm-02-rh-95.ly"
    \include "../rh/pm-02-rh-12.ly"
    \include "../rh/pm-02-rh-21.ly"
    \include "../rh/pm-02-rh-14.ly"
    \include "../rh/pm-02-rh-25.ly"
    \include "../rh/pm-02-rh-6.ly"
    \include "../rh/pm-02-rh-72.ly"
    \include "../rh/pm-02-rh-96.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/pm-02-lh-43.ly"
    \include "../lh/pm-02-lh-77.ly"
    \include "../lh/pm-02-lh-86.ly"
    \include "../lh/pm-02-lh-31.ly"
    \include "../lh/pm-02-lh-11.ly"
    \include "../lh/pm-02-lh-69.ly"
    \include "../lh/pm-02-lh-71.ly"
    \include "../lh/pm-02-lh-90.ly"
    \include "../lh/pm-02-lh-95.ly"
    \include "../lh/pm-02-lh-12.ly"
    \include "../lh/pm-02-lh-21.ly"
    \include "../lh/pm-02-lh-14.ly"
    \include "../lh/pm-02-lh-25.ly"
    \include "../lh/pm-02-lh-6.ly"
    \include "../lh/pm-02-lh-72.ly"
    \include "../lh/pm-02-lh-96.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}