\include "paper_settings.ly"

\score{
 << 
    %Voice part
    \context Staff = "voice" \with { instrumentName = "Voice" }
    
    <<
    \set Staff.midiInstrument =#"voice oohs" {

    \include "voice_option.ly"
    \include "./voice/gp-01-vc-78.ly"
    
    }  
    
    >>  
    
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano"}
    <<
       \context Staff = "rh" {
         \include "voice_option.ly"
         
         \include "./rh/gp-01-rh-78.ly"
         
        }
        
        \context Staff = "lh" {
        \include "bassline_option.ly"
        \include "./lh/gp-01-lh-78.ly"
          
        }
        
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}
    