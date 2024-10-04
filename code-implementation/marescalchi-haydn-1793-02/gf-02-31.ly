\include "paper_settings.ly"

\score{
 << 
  %Harpsichord
    \context PianoStaff \with { instrumentName = ""}
    <<
      
       \context Staff = "rh" {
         \set Staff.midiInstrument =#"harpsichord"
         \include "voice_option.ly"
\include "./rh/gf-02-rh-31.ly"
}
        
        \context Staff = "lh" {
         \set Staff.midiInstrument =#"harpsichord"
         \include"bassline_option.ly"
\include "./lh/gf-02-lh-31.ly"
}
        
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}
