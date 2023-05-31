echo '

update_interval 1
total_run_times 0
net_avg_samples 1
cpu_avg_samples 1
imlib_cache_size 0
double_buffer yes
no_buffers yes
use_xft yes
xftfont Droid Sans:size=9
override_utf8_locale yes
text_buffer_size 1
own_window yes
own_window_type desktop
own_window_transparent yes
own_window_hints undecorated,sticky,skip_taskbar,skip_pager
alignment bottom_right
# 30
gap_x 1
# 190
gap_y 190
minimum_size 280 0
default_bar_size 30 8
draw_shades no
default_color ffffff
default_shade_color 000000
color0 00d9ff
color1 ffffff
color2 c5c5c5
color3 ff8400
own_window_argb_visual yes
own_window_colour 000000
own_window_argb_value 0

TEXT
${goto 180}${color0}${font Zekton:style=bold:size=15}${voffset 50}${exec whoami}
${voffset -45}${font Zekton:style=Bold:size=12}${color}${goto 70}${uptime}
${goto 80}${color1}${font Zekton:style=Bold:size=12}${color1}${sysname}${color}${font}
${font Chinacat:size=14}${offset 38}${voffset 45}${time %B %d, %Y}
${voffset 5}${goto 0}${color3}${font Zekton:style=bold:size=28}${time %H:%M:%S}${font}${color1}${goto 198}${font Zekton:style=Bold:size=11}CPU
${goto 198}${font Zekton:style=Bold:size=11}${color1}${cpu cpu1}%
${voffset 30}${goto 60}/home
${goto 60}${font Zekton:style=Bold:size=10}${fs_used /home}
${voffset 30}${goto 110}${font Zekton:style=Bold:size=11}RAM${color1}${goto 190}Root
${goto 110}${font Zekton:style=Bold:size=11}${memperc}% ${goto 185}${font Zekton:style=Bold:size=11}${fs_used /}${font Zekton:style=Bold:size=11}${color1}${font}%
${font Zekton:style=Bold:size=11}${font}
${voffset -280}${goto 235}${font Zekton:style=bold:size=11}${acpitemp}
${goto 235}${font Zekton:style=bold:size=11}°C


${image ~/.conky/victorConky/ArchSmall.png -p 10,0}
' >> conky.conf
