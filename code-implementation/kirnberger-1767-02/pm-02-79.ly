\include "paper_settings.ly"

\score{
 << 
  \new StaffGroup
   <<
    %Violin1
    \context Staff = "violin1" \with { instrumentName = "Violini unis." }
    
    <<
    \set Staff.midiInstrument =#"violin" {

    \include "voice_option.ly"
\include "./violin1/pm-02-vln1-79.ly"

}  
    
    >>  
    
    >>
    
    %Harpsichord
    \context PianoStaff \with { instrumentName = "Clav."}
    <<
      
       \context Staff = "rh" {
         \set Staff.midiInstrument =#"harpsichord"
         %right hand part
         \include "voice_option.ly"
\include "./rh/pm-02-rh-79.ly"
}
        
        \context Staff = "lh" {
         \set Staff.midiInstrument =#"harpsichord"
         \include"bassline_option.ly"
\include "./lh/pm-02-lh-79.ly"
}
        
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}
