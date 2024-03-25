\include "paper_settings.ly" 
\score
{
    <<
    %Voice part
    \context Staff = "voice" \with { instrumentName = "Voice" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "voice_option.ly"
    \include "./voice/gp-01-vc-81.ly"
    \include "./voice/gp-01-vc-89.ly"
    \include "./voice/gp-01-vc-18.ly"
    \include "./voice/gp-01-vc-98.ly"
    \include "./voice/gp-01-vc-9.ly"
    \include "./voice/gp-01-vc-175.ly"
    \include "./voice/gp-01-vc-27.ly"
    \include "./voice/gp-01-vc-179.ly"
    }
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
    \context Staff = "rh" {
    \include "voice_option.ly"
    \include "./rh/gp-01-rh-81.ly"
    \include "./rh/gp-01-rh-89.ly"
    \include "./rh/gp-01-rh-18.ly"
    \include "./rh/gp-01-rh-98.ly"
    \include "./rh/gp-01-rh-9.ly"
    \include "./rh/gp-01-rh-175.ly"
    \include "./rh/gp-01-rh-27.ly"
    \include "./rh/gp-01-rh-179.ly"
    }
    \context Staff = "lh" {
    \include "bassline_option.ly"
    \include "./lh/gp-01-lh-81.ly"
    \include "./lh/gp-01-lh-89.ly"
    \include "./lh/gp-01-lh-18.ly"
    \include "./lh/gp-01-lh-98.ly"
    \include "./lh/gp-01-lh-9.ly"
    \include "./lh/gp-01-lh-175.ly"
    \include "./lh/gp-01-lh-27.ly"
    \include "./lh/gp-01-lh-179.ly"
    }
    >>
    >>
    \include "layout_settings.ly"
}
