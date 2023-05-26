echo '
Config { font = "monospace:size=1:antialiasing=true:hinting=true"
       , additionalFonts = []
       , bgColor = "#000035"
       , fgColor = "#888b8d"
       , borderColor = "#000035"
       , border = TopB
       , alpha = 255
       , position = Top
       , textOffset = -1
       , iconOffset = -1
       , lowerOnStart = True
       , pickBroadest = False
       , persistent = False
       , hideOnStart = False
       , iconRoot = "."
       , allDesktops = True
       , overrideRedirect = True
       , commands = [ Run Cpu ["-L","3","-H","50",
                               "--normal","green","--high","red"] 10
                    , Run Memory ["-t","Mem: <usedratio>%"] 10
                    , Run Swap [] 10
                    , Run Date "%a %b %_d %Y %H:%M:%S" "date" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "<fc=#b77729>%cpu%</fc>  <fc=#b7778f>%memory%</fc>   <fc=#ff6e31>%swap%</fc>  }\
               Hello     \{  <fc=#b680ff>%date%</fc>"
       }
' >> xmobarrc
