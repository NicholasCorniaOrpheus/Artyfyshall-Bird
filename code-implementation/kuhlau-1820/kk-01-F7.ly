\include "paper_settings.ly"

\score{
 << 
  %Harpsichord
    \context PianoStaff \with { instrumentName = "Clav."}
    <<
      
       \context Staff = "rh" {
         \set Staff.midiInstrument =#"piano"
         \include "voice_option.ly"
\include "./rh/kk-01-rh-F7.ly"
}
        
        \context Staff = "lh" {
         \set Staff.midiInstrument =#"piano"
         \include"bassline_option.ly"
\include "./lh/kk-01-lh-F7.ly"
}
        
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}
