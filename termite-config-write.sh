echo '
[options]
#allow_bold = true
#audible_bell = false
#bold_is_bright = true
#cell_height_scale = 1.0
#cell_width_scale = 1.0
clickable_url = true
#clickable_url_ctrl = false
#dynamic_title = true
font = MesloLGS NF Bold
#fullscreen = true
#icon_name = terminal
mouse_autohide = false
scroll_on_output = true
scroll_on_keystroke = true
word_char_exceptions = -=&#:/.?@+~_%;
# Length of the scrollback buffer, 0 disabled the scrollback buffer
# and setting it to a negative value means "infinite scrollback"
scrollback_lines = 10000
#search_wrap = true
#urgent_on_bell = true
#hyperlinks = false

# $BROWSER is used by default if set, with xdg-open as a fallback
#browser = xdg-open

# "system", "on" or "off"
#cursor_blink = system

# "block", "underline" or "ibeam"
#cursor_shape = block

# Hide links that are no longer valid in url select overlay mode
#filter_unmatched_urls = true

# Emit escape sequences for extra modified keys
#modify_other_keys = false

# set size hints for the window
#size_hints = false

# "off", "left" or "right"
scrollbar = right

# Whether to prefer using the GTK dark theme variant.
gtk_dark_theme = true

# Enable smart copy. ^C will copy if text has been selected. ^V will paste. It
# is no longer possible to send a ^V to the running program when this option is
# enabled.
smart_copy = true

[colors]
# If both of these are unset, cursor falls back to the foreground color,
# and cursor_foreground falls back to the background color.
#cursor = #dcdccc
#cursor_foreground = #dcdccc

#foreground = #dcdccc
#foreground_bold = #ffffff
#background = #000000

# 20% background transparency (requires a compositor)
background = rgba(00, 00, 00, 0.8)

# If unset, will reverse foreground and background
highlight = #2f2f2f

# Colors from color0 to color254 can be set
color0 = #3f3f3f
color1 = #705050
color2 = #60b48a
color3 = #dfaf8f
color4 = #506070
color5 = #dc8cc3
color6 = #8cd0d3
color7 = #dcdccc
color8 = #709080
color9 = #dca3a3
color10 = #c3bf9f
color11 = #f0dfaf
color12 = #94bff3
color13 = #ec93d3
color14 = #93e0e3
color15 = #ffffff

[hints]
font = MesloLGS NF Bold
foreground = #dcdccc
#background = #3f3f3f
#active_foreground = #e68080
#active_background = #3f3f3f
#padding = 2
#border = #3f3f3f
#border_width = 0.5
#roundness = 2.0

# vim: ft=dosini cms=#%s
' >> config
