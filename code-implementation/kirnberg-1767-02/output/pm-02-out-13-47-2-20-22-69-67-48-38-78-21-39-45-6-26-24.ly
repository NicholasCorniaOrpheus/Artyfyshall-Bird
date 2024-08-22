\include "../paper_settings.ly" 
\header { piece = \markup "[13-47-2-20-22-69-67-48-38-78-21-39-45-6-26-24]" }

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
    \include "../violin1/pm-02-vln1-47.ly"
    \include "../violin1/pm-02-vln1-2.ly"
    \include "../violin1/pm-02-vln1-20.ly"
    \include "../violin1/pm-02-vln1-22.ly"
    \include "../violin1/pm-02-vln1-69.ly"
    \include "../violin1/pm-02-vln1-67.ly"
    \include "../violin1/pm-02-vln1-48.ly"
    \bar":|.|:"
    \break
    \mark \markup{Seconde Partie}
    \include "../violin1/pm-02-vln1-38.ly"
    \include "../violin1/pm-02-vln1-78.ly"
    \include "../violin1/pm-02-vln1-21.ly"
    \include "../violin1/pm-02-vln1-39.ly"
    \include "../violin1/pm-02-vln1-45.ly"
    \include "../violin1/pm-02-vln1-6.ly"
    \include "../violin1/pm-02-vln1-26.ly"
    \include "../violin1/pm-02-vln1-24.ly"
    \bar":|."
    }
    >>
    >>
    %Harpsichord part
    \context PianoStaff \with { instrumentName = "Clav." midiInstrument=#"harpsichord"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/pm-02-rh-13.ly"
    \include "../rh/pm-02-rh-47.ly"
    \include "../rh/pm-02-rh-2.ly"
    \include "../rh/pm-02-rh-20.ly"
    \include "../rh/pm-02-rh-22.ly"
    \include "../rh/pm-02-rh-69.ly"
    \include "../rh/pm-02-rh-67.ly"
    \include "../rh/pm-02-rh-48.ly"
    \include "../rh/pm-02-rh-38.ly"
    \include "../rh/pm-02-rh-78.ly"
    \include "../rh/pm-02-rh-21.ly"
    \include "../rh/pm-02-rh-39.ly"
    \include "../rh/pm-02-rh-45.ly"
    \include "../rh/pm-02-rh-6.ly"
    \include "../rh/pm-02-rh-26.ly"
    \include "../rh/pm-02-rh-24.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/pm-02-lh-13.ly"
    \include "../lh/pm-02-lh-47.ly"
    \include "../lh/pm-02-lh-2.ly"
    \include "../lh/pm-02-lh-20.ly"
    \include "../lh/pm-02-lh-22.ly"
    \include "../lh/pm-02-lh-69.ly"
    \include "../lh/pm-02-lh-67.ly"
    \include "../lh/pm-02-lh-48.ly"
    \include "../lh/pm-02-lh-38.ly"
    \include "../lh/pm-02-lh-78.ly"
    \include "../lh/pm-02-lh-21.ly"
    \include "../lh/pm-02-lh-39.ly"
    \include "../lh/pm-02-lh-45.ly"
    \include "../lh/pm-02-lh-6.ly"
    \include "../lh/pm-02-lh-26.ly"
    \include "../lh/pm-02-lh-24.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}