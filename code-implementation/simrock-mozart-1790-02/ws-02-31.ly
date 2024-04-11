\include "paper_settings.ly"

\score{
 << 
  %Harpsichord
    \context PianoStaff \with { instrumentName = "Clav."}
    <<
      
       \context Staff = "rh" {
         \set Staff.midiInstrument =#"piano"
         \include "voice_option.ly"
\include "./rh/ws-02-rh-31.ly"
}
        
        \context Staff = "lh" {
         \set Staff.midiInstrument =#"harpsichord"
         \include"bassline_option.ly"
\include "./lh/ws-02-lh-31.ly"
}
        
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}
