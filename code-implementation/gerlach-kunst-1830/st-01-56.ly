\include "paper_settings.ly"

\score{
 << 
  %Harpsichord
    \context PianoStaff \with { instrumentName = "Clav."}
    <<
      
       \context Staff = "rh" {
         \set Staff.midiInstrument =#"piano"
         \include "voice_option.ly"
\include "./rh/st-01-rh-56.ly"
}
        
        \context Staff = "lh" {
         \set Staff.midiInstrument =#"piano"
         \include"bassline_option.ly"
\include "./lh/st-01-lh-56.ly"
}
        
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}
