module events

pub enum EventType {
	first = 0x000
	quit = 0x100 // iOS events
	app_terminating = 0x101
	app_lowmemory = 0x102
	app_willenterbackground = 0x103
	app_didenterbackground = 0x104
	app_willenterforeground = 0x105
	app_didenterforeground = 0x106 // display events
	displayevent = 0x150 // window events
	windowevent = 0x200
	syswmevent = 0x201 // keyboard events
	keydown = 0x300
	keyup = 0x301
	textediting = 0x302
	textinput = 0x303
	keymapchanged = 0x304 // mouse events
	mousemotion = 0x400
	mousebuttondown = 0x401
	mousebuttonup = 0x402
	mousewheel = 0x403 // joystick events
	joyaxismotion = 0x600
	joyballmotion = 0x601
	joyhatmotion = 0x602
	joybuttondown = 0x603
	joybuttonup = 0x604
	joydeviceadded = 0x605
	joydeviceremoved = 0x606 // game controller events
	controlleraxismotion = 0x650
	controlleraxisbuttondown = 0x651
	controlleraxisbuttonup = 0x652
	controllerdeviceadded = 0x653
	controllerdeviceremoved = 0x654
	controllerdeviceremapped = 0x655 // touch events
	fingerdown = 0x700
	fingerup = 0x701
	fingermotion = 0x702 // gesture events
	dollargesture = 0x800
	dollarrecord = 0x801
	multigesture = 0x802 // clipboard events
	clipboardupdate = 0x900 // drag and drop events
	dropfile = 0x1000
	droptext = 0x1001
	dropbegin = 0x1002
	dropcomplete = 0x1003 // audio hotplug events
	audiodeviceadded = 0x1100
	audiodeviceremoved = 0x1101 // sensor events
	sensorupdate = 0x1200 // render events
	render_targets_reset = 0x2000
	render_device_reset = 0x2001 // misc
	lastevent = 0xFFFF
}

pub enum EventCategory {
	app        = 0x0001
	display    = 0x0002
	window     = 0x0004
	system     = 0x0008
	key        = 0x0010
	text       = 0x0020
	mouse      = 0x0040
	joystick   = 0x0080
	controller = 0x0100
	touch      = 0x0200
	clipboard  = 0x0400
	drop       = 0x0800
	audio      = 0x1000
	sensor     = 0x2000
	renderer   = 0x4000
	all        = 0xFFFF
}

pub enum KeyCode {
	key_unknown = 0

	key_return = 13
	key_escape = 27
	key_backspace = 8
	key_tab = 9
	key_space = 32
	key_exclaim = 33
	key_quotedbl = 34
	key_hash = 35
	key_percent = 36
	key_dollar = 37
	key_ampersand = 38
	key_quote = 39
	key_leftparen = 40
	key_rightparen = 41
	key_asterisk = 42
	key_plus = 43
	key_comma = 44
	key_minus = 45
	key_period = 46
	key_slash = 47
	key_0 = 48
	key_1 = 49
	key_2 = 50
	key_3 = 51
	key_4 = 52
	key_5 = 53
	key_6 = 54
	key_7 = 55
	key_8 = 56
	key_9 = 57
	key_colon = 58
	key_semicolon = 59
	key_less = 60
	key_equals = 61
	key_greater = 62
	key_question = 63
	key_at = 64

	key_leftbracket = 91
	key_backslash = 92
	key_rightbracket = 93
	key_caret = 94
	key_underscore = 95
	key_backquote = 96
	key_a = 97
	key_b = 98
	key_c = 99
	key_d = 100
	key_e = 101
	key_f = 102
	key_g = 103
	key_h = 104
	key_i = 105
	key_j = 106
	key_k = 107
	key_l = 108
	key_m = 109
	key_n = 110
	key_o = 111
	key_p = 112
	key_q = 113
	key_r = 114
	key_s = 115
	key_t = 116
	key_u = 117
	key_v = 118
	key_w = 119
	key_x = 120
	key_y = 121
	key_z = 122

	key_capslock = 1073741881

	key_f1 = 1073741882
	key_f2 = 1073741883
	key_f3 = 1073741884
	key_f4 = 1073741885
	key_f5 = 1073741886
	key_f6 = 1073741887
	key_f7 = 1073741888
	key_f8 = 1073741889
	key_f9 = 1073741890
	key_f10 = 1073741891
	key_f11 = 1073741892
	key_f12 = 1073741893

	key_printscreen = 1073741894
	key_scrolllock = 1073741895
	key_pause = 1073741896
	key_insert = 1073741897
	key_home = 1073741898
	key_pageup = 1073741899
	key_delete = 127
	key_end = 1073741901
	key_pagedown = 1073741902
	key_right = 1073741903
	key_left = 1073741904
	key_down = 1073741905
	key_up = 1073741906
	key_numlockclear = 1073741907

	key_kp_divide   = 1073741908
	key_kp_multiply = 1073741909
	key_kp_minus    = 1073741910
	key_kp_plus     = 1073741911
	key_kp_enter    = 1073741912
	key_kp_1        = 1073741913
	key_kp_2        = 1073741914
	key_kp_3        = 1073741915
	key_kp_4        = 1073741916
	key_kp_5        = 1073741917
	key_kp_6        = 1073741918
	key_kp_7        = 1073741919
	key_kp_8        = 1073741920
	key_kp_9        = 1073741921
	key_kp_0        = 1073741922
	key_kp_period   = 1073741923

	/*key_application = sdl_scancode_to_keycode(sdl_scancode_application)
	key_power = sdl_scancode_to_keycode(sdl_scancode_power)
	key_kp_equals = sdl_scancode_to_keycode(sdl_scancode_kp_equals)
	key_f13 = sdl_scancode_to_keycode(sdl_scancode_f13)
	key_f14 = sdl_scancode_to_keycode(sdl_scancode_f14)
	key_f15 = sdl_scancode_to_keycode(sdl_scancode_f15)
	key_f16 = sdl_scancode_to_keycode(sdl_scancode_f16)
	key_f17 = sdl_scancode_to_keycode(sdl_scancode_f17)
	key_f18 = sdl_scancode_to_keycode(sdl_scancode_f18)
	key_f19 = sdl_scancode_to_keycode(sdl_scancode_f19)
	key_f20 = sdl_scancode_to_keycode(sdl_scancode_f20)
	key_f21 = sdl_scancode_to_keycode(sdl_scancode_f21)
	key_f22 = sdl_scancode_to_keycode(sdl_scancode_f22)
	key_f23 = sdl_scancode_to_keycode(sdl_scancode_f23)
	key_f24 = sdl_scancode_to_keycode(sdl_scancode_f24)
	key_execute = sdl_scancode_to_keycode(sdl_scancode_execute)
	key_help = sdl_scancode_to_keycode(sdl_scancode_help)
	key_menu = sdl_scancode_to_keycode(sdl_scancode_menu)
	key_select = sdl_scancode_to_keycode(sdl_scancode_select)
	key_stop = sdl_scancode_to_keycode(sdl_scancode_stop)
	key_again = sdl_scancode_to_keycode(sdl_scancode_again)
	key_undo = sdl_scancode_to_keycode(sdl_scancode_undo)
	key_cut = sdl_scancode_to_keycode(sdl_scancode_cut)
	key_copy = sdl_scancode_to_keycode(sdl_scancode_copy)
	key_paste = sdl_scancode_to_keycode(sdl_scancode_paste)
	key_find = sdl_scancode_to_keycode(sdl_scancode_find)
	key_mute = sdl_scancode_to_keycode(sdl_scancode_mute)
	key_volumeup = sdl_scancode_to_keycode(sdl_scancode_volumeup)
	key_volumedown = sdl_scancode_to_keycode(sdl_scancode_volumedown)
	key_kp_comma = sdl_scancode_to_keycode(sdl_scancode_kp_comma)
	key_kp_equalsas400 =
		sdl_scancode_to_keycode(sdl_scancode_kp_equalsas400)

	key_alterase = sdl_scancode_to_keycode(sdl_scancode_alterase)
	key_sysreq = sdl_scancode_to_keycode(sdl_scancode_sysreq)
	key_cancel = sdl_scancode_to_keycode(sdl_scancode_cancel)
	key_clear = sdl_scancode_to_keycode(sdl_scancode_clear)
	key_prior = sdl_scancode_to_keycode(sdl_scancode_prior)
	key_return2 = sdl_scancode_to_keycode(sdl_scancode_return2)
	key_separator = sdl_scancode_to_keycode(sdl_scancode_separator)
	key_out = sdl_scancode_to_keycode(sdl_scancode_out)
	key_oper = sdl_scancode_to_keycode(sdl_scancode_oper)
	key_clearagain = sdl_scancode_to_keycode(sdl_scancode_clearagain)
	key_crsel = sdl_scancode_to_keycode(sdl_scancode_crsel)
	key_exsel = sdl_scancode_to_keycode(sdl_scancode_exsel)

	key_kp_00 = sdl_scancode_to_keycode(sdl_scancode_kp_00)
	key_kp_000 = sdl_scancode_to_keycode(sdl_scancode_kp_000)
	key_thousandsseparator =
		sdl_scancode_to_keycode(sdl_scancode_thousandsseparator)
	key_decimalseparator =
		sdl_scancode_to_keycode(sdl_scancode_decimalseparator)
	key_currencyunit = sdl_scancode_to_keycode(sdl_scancode_currencyunit)
	key_currencysubunit =
		sdl_scancode_to_keycode(sdl_scancode_currencysubunit)
	key_kp_leftparen = sdl_scancode_to_keycode(sdl_scancode_kp_leftparen)
	key_kp_rightparen = sdl_scancode_to_keycode(sdl_scancode_kp_rightparen)
	key_kp_leftbrace = sdl_scancode_to_keycode(sdl_scancode_kp_leftbrace)
	key_kp_rightbrace = sdl_scancode_to_keycode(sdl_scancode_kp_rightbrace)
	key_kp_tab = sdl_scancode_to_keycode(sdl_scancode_kp_tab)
	key_kp_backspace = sdl_scancode_to_keycode(sdl_scancode_kp_backspace)
	key_kp_a = sdl_scancode_to_keycode(sdl_scancode_kp_a)
	key_kp_b = sdl_scancode_to_keycode(sdl_scancode_kp_b)
	key_kp_c = sdl_scancode_to_keycode(sdl_scancode_kp_c)
	key_kp_d = sdl_scancode_to_keycode(sdl_scancode_kp_d)
	key_kp_e = sdl_scancode_to_keycode(sdl_scancode_kp_e)
	key_kp_f = sdl_scancode_to_keycode(sdl_scancode_kp_f)
	key_kp_xor = sdl_scancode_to_keycode(sdl_scancode_kp_xor)
	key_kp_power = sdl_scancode_to_keycode(sdl_scancode_kp_power)
	key_kp_percent = sdl_scancode_to_keycode(sdl_scancode_kp_percent)
	key_kp_less = sdl_scancode_to_keycode(sdl_scancode_kp_less)
	key_kp_greater = sdl_scancode_to_keycode(sdl_scancode_kp_greater)
	key_kp_ampersand = sdl_scancode_to_keycode(sdl_scancode_kp_ampersand)
	key_kp_dblampersand =
		sdl_scancode_to_keycode(sdl_scancode_kp_dblampersand)
	key_kp_verticalbar =
		sdl_scancode_to_keycode(sdl_scancode_kp_verticalbar)
	key_kp_dblverticalbar =
		sdl_scancode_to_keycode(sdl_scancode_kp_dblverticalbar)
	key_kp_colon = sdl_scancode_to_keycode(sdl_scancode_kp_colon)
	key_kp_hash = sdl_scancode_to_keycode(sdl_scancode_kp_hash)
	key_kp_space = sdl_scancode_to_keycode(sdl_scancode_kp_space)
	key_kp_at = sdl_scancode_to_keycode(sdl_scancode_kp_at)
	key_kp_exclam = sdl_scancode_to_keycode(sdl_scancode_kp_exclam)
	key_kp_memstore = sdl_scancode_to_keycode(sdl_scancode_kp_memstore)
	key_kp_memrecall = sdl_scancode_to_keycode(sdl_scancode_kp_memrecall)
	key_kp_memclear = sdl_scancode_to_keycode(sdl_scancode_kp_memclear)
	key_kp_memadd = sdl_scancode_to_keycode(sdl_scancode_kp_memadd)
	key_kp_memsubtract =
		sdl_scancode_to_keycode(sdl_scancode_kp_memsubtract)
	key_kp_memmultiply =
		sdl_scancode_to_keycode(sdl_scancode_kp_memmultiply)
	key_kp_memdivide = sdl_scancode_to_keycode(sdl_scancode_kp_memdivide)
	key_kp_plusminus = sdl_scancode_to_keycode(sdl_scancode_kp_plusminus)
	key_kp_clear = sdl_scancode_to_keycode(sdl_scancode_kp_clear)
	key_kp_clearentry = sdl_scancode_to_keycode(sdl_scancode_kp_clearentry)
	key_kp_binary = sdl_scancode_to_keycode(sdl_scancode_kp_binary)
	key_kp_octal = sdl_scancode_to_keycode(sdl_scancode_kp_octal)
	key_kp_decimal = sdl_scancode_to_keycode(sdl_scancode_kp_decimal)
	key_kp_hexadecimal =
		sdl_scancode_to_keycode(sdl_scancode_kp_hexadecimal)
	*/

	key_lctrl  = 1073742048
	key_lshift = 1073742049
	key_lalt   = 1073742050
	key_lgui   = 1073742051
	key_rctrl  = 1073742052
	key_rshift = 1073742053
	key_ralt   = 1073742054
	key_rgui   = 1073742055

	key_mode   = 1073742081

	/*key_audionext = sdl_scancode_to_keycode(sdl_scancode_audionext)
	key_audioprev = sdl_scancode_to_keycode(sdl_scancode_audioprev)
	key_audiostop = sdl_scancode_to_keycode(sdl_scancode_audiostop)
	key_audioplay = sdl_scancode_to_keycode(sdl_scancode_audioplay)
	key_audiomute = sdl_scancode_to_keycode(sdl_scancode_audiomute)
	key_mediaselect = sdl_scancode_to_keycode(sdl_scancode_mediaselect)
	key_www = sdl_scancode_to_keycode(sdl_scancode_www)
	key_mail = sdl_scancode_to_keycode(sdl_scancode_mail)
	key_calculator = sdl_scancode_to_keycode(sdl_scancode_calculator)
	key_computer = sdl_scancode_to_keycode(sdl_scancode_computer)
	key_ac_search = sdl_scancode_to_keycode(sdl_scancode_ac_search)
	key_ac_home = sdl_scancode_to_keycode(sdl_scancode_ac_home)
	key_ac_back = sdl_scancode_to_keycode(sdl_scancode_ac_back)
	key_ac_forward = sdl_scancode_to_keycode(sdl_scancode_ac_forward)
	key_ac_stop = sdl_scancode_to_keycode(sdl_scancode_ac_stop)
	key_ac_refresh = sdl_scancode_to_keycode(sdl_scancode_ac_refresh)
	key_ac_bookmarks = sdl_scancode_to_keycode(sdl_scancode_ac_bookmarks)

	key_brightnessdown =
		sdl_scancode_to_keycode(sdl_scancode_brightnessdown)
	key_brightnessup = sdl_scancode_to_keycode(sdl_scancode_brightnessup)
	key_displayswitch = sdl_scancode_to_keycode(sdl_scancode_displayswitch)
	key_kbdillumtoggle =
		sdl_scancode_to_keycode(sdl_scancode_kbdillumtoggle)
	key_kbdillumdown = sdl_scancode_to_keycode(sdl_scancode_kbdillumdown)
	key_kbdillumup = sdl_scancode_to_keycode(sdl_scancode_kbdillumup)
	key_eject = sdl_scancode_to_keycode(sdl_scancode_eject)
	key_sleep = sdl_scancode_to_keycode(sdl_scancode_sleep)
	key_app1 = sdl_scancode_to_keycode(sdl_scancode_app1)
	key_app2 = sdl_scancode_to_keycode(sdl_scancode_app2)

	key_audiorewind = sdl_scancode_to_keycode(sdl_scancode_audiorewind)
	key_audiofastforward = sdl_scancode_to_keycode(sdl_scancode_audiofastforward)*/
}

pub enum ScanCode {
	code_unknown = 0
	code_a = 4
	code_b = 5
	code_c = 6
	code_d = 7
	code_e = 8
	code_f = 9
	code_g = 10
	code_h = 11
	code_i = 12
	code_j = 13
	code_k = 14
	code_l = 15
	code_m = 16
	code_n = 17
	code_o = 18
	code_p = 19
	code_q = 20
	code_r = 21
	code_s = 22
	code_t = 23
	code_u = 24
	code_v = 25
	code_w = 26
	code_x = 27
	code_y = 28
	code_z = 29
	code_1 = 30
	code_2 = 31
	code_3 = 32
	code_4 = 33
	code_5 = 34
	code_6 = 35
	code_7 = 36
	code_8 = 37
	code_9 = 38
	code_0 = 39
	code_return = 40
	code_escape = 41
	code_backspace = 42
	code_tab = 43
	code_space = 44
	code_minus = 45
	code_equals = 46
	code_leftbracket = 47
	code_rightbracket = 48
	code_backslash = 49
	code_nonushash = 50
	code_semicolon = 51
	code_apostrophe = 52
	code_grave = 53
	code_comma = 54
	code_period = 55
	code_slash = 56
	code_capslock = 57
	code_f1 = 58
	code_f2 = 59
	code_f3 = 60
	code_f4 = 61
	code_f5 = 62
	code_f6 = 63
	code_f7 = 64
	code_f8 = 65
	code_f9 = 66
	code_f10 = 67
	code_f11 = 68
	code_f12 = 69
	code_printscreen = 70
	code_scrolllock = 71
	code_pause = 72
	code_insert = 73
	code_home = 74
	code_pageup = 75
	code_delete = 76
	code_end = 77
	code_pagedown = 78
	code_right = 79
	code_left = 80
	code_down = 81
	code_up = 82
	code_numlockclear = 83
	code_kp_divide = 84
	code_kp_multiply = 85
	code_kp_minus = 86
	code_kp_plus = 87
	code_kp_enter = 88
	code_kp_1 = 89
	code_kp_2 = 90
	code_kp_3 = 91
	code_kp_4 = 92
	code_kp_5 = 93
	code_kp_6 = 94
	code_kp_7 = 95
	code_kp_8 = 96
	code_kp_9 = 97
	code_kp_0 = 98
	code_kp_period = 99
	code_nonusbackslash = 100
	code_application = 101
	code_power = 102
	code_kp_equals = 103
	code_f13 = 104
	code_f14 = 105
	code_f15 = 106
	code_f16 = 107
	code_f17 = 108
	code_f18 = 109
	code_f19 = 110
	code_f20 = 111
	code_f21 = 112
	code_f22 = 113
	code_f23 = 114
	code_f24 = 115
	code_execute = 116
	code_help = 117
	code_menu = 118
	code_select = 119
	code_stop = 120
	code_again = 121
	code_undo = 122
	code_cut = 123
	code_copy = 124
	code_paste = 125
	code_find = 126
	code_mute = 127
	code_volumeup = 128
	code_volumedown = 129
	code_kp_comma = 133
	code_kp_equalsas400 = 134
	code_international1 = 135
	code_international2 = 136
	code_international3 = 137
	code_international4 = 138
	code_international5 = 139
	code_international6 = 140
	code_international7 = 141
	code_international8 = 142
	code_international9 = 143
	code_lang1 = 144
	code_lang2 = 145
	code_lang3 = 146
	code_lang4 = 147
	code_lang5 = 148
	code_lang6 = 149
	code_lang7 = 150
	code_lang8 = 151
	code_lang9 = 152
	code_alterase = 153
	code_sysreq = 154
	code_cancel = 155
	code_clear = 156
	code_prior = 157
	code_return2 = 158
	code_separator = 159
	code_out = 160
	code_oper = 161
	code_clearagain = 162
	code_crsel = 163
	code_exsel = 164
	code_kp_00 = 176
	code_kp_000 = 177
	code_thousandsseparator = 178
	code_decimalseparator = 179
	code_currencyunit = 180
	code_currencysubunit = 181
	code_kp_leftparen = 182
	code_kp_rightparen = 183
	code_kp_leftbrace = 184
	code_kp_rightbrace = 185
	code_kp_tab = 186
	code_kp_backspace = 187
	code_kp_a = 188
	code_kp_b = 189
	code_kp_c = 190
	code_kp_d = 191
	code_kp_e = 192
	code_kp_f = 193
	code_kp_xor = 194
	code_kp_power = 195
	code_kp_percent = 196
	code_kp_less = 197
	code_kp_greater = 198
	code_kp_ampersand = 199
	code_kp_dblampersand = 200
	code_kp_verticalbar = 201
	code_kp_dblverticalbar = 202
	code_kp_colon = 203
	code_kp_hash = 204
	code_kp_space = 205
	code_kp_at = 206
	code_kp_exclam = 207
	code_kp_memstore = 208
	code_kp_memrecall = 209
	code_kp_memclear = 210
	code_kp_memadd = 211
	code_kp_memsubtract = 212
	code_kp_memmultiply = 213
	code_kp_memdivide = 214
	code_kp_plusminus = 215
	code_kp_clear = 216
	code_kp_clearentry = 217
	code_kp_binary = 218
	code_kp_octal = 219
	code_kp_decimal = 220
	code_kp_hexadecimal = 221
	code_lctrl = 224
	code_lshift = 225
	code_lalt = 226
	code_lgui = 227
	code_rctrl = 228
	code_rshift = 229
	code_ralt = 230
	code_rgui = 231
	code_mode = 257
	code_audionext = 258
	code_audioprev = 259
	code_audiostop = 260
	code_audioplay = 261
	code_audiomute = 262
	code_mediaselect = 263
	code_www = 264
	code_mail = 265
	code_calculator = 266
	code_computer = 267
	code_ac_search = 268
	code_ac_home = 269
	code_ac_back = 270
	code_ac_forward = 271
	code_ac_stop = 272
	code_ac_refresh = 273
	code_ac_bookmarks = 274
	code_brightnessdown = 275
	code_brightnessup = 276
	code_displayswitch = 277
	code_kbdillumtoggle = 278
	code_kbdillumdown = 279
	code_kbdillumup = 280
	code_eject = 281
	code_sleep = 282
	code_app1 = 283
	code_app2 = 284
	code_audiorewind = 285
	code_audiofastforward = 286
	code_num_scancodes = 512
}