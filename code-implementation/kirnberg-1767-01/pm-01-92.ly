\include "paper_settings.ly"

\score{
 << 
  \new StaffGroup
   <<
    %Violin1
    \context Staff = "violin1" \with { instrumentName = "Viol. 1" }
    
    <<
    \set Staff.midiInstrument =#"violin" {

    \include "voice_option.ly"
\include "./violin1/pm-01-vln1-92.ly"
}  
    
    >> 
    %Violin2
    \context Staff = "violin2" \with { instrumentName = "Viol. 2" }
    
    <<
    \set Staff.midiInstrument =#"violin" {

    \include "voice_option.ly"
\include "./violin2/pm-01-vln2-92.ly"
}  
    
    >>  
    
    >>
    
    %Harpsichord
    \context PianoStaff \with { instrumentName = "Clav."}
    <<
      
       \context Staff = "rh" {
         \set Staff.midiInstrument =#"harpsichord"
         %aggregation of violin1 and 2
         \include "voice_option.ly"
<<{\include "./violin1/pm-01-vln1-92.ly" } \\ { \include"./violin2/pm-01-vln2-92.ly" } >>
}
        
        \context Staff = "lh" {
         \set Staff.midiInstrument =#"harpsichord"
         \include"bassline_option.ly"
\include "./lh/pm-01-lh-92.ly"
}
        
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}
