# Custom variables
# Colours: gruvbox dark - https://github.com/morhetz/gruvbox/
# bg, dark to light
bg0_h = '#1d2021'
bg = '#282828'
bg0 = '#282828'
bg0_s = '#32302f'
bg1 = '#3c3836'
bg2 = '#504945'
bg3 = '#665c54'
bg4 = '#7c6f64'
# fg, dark to light
fg4 = '#a89984'
fg3 = '#bdae93'
fg2 = '#d5c4a1'
fg1 = '#ebdbb2'
fg = '#ebdbb2'
fg0 = '#fbf1c7'
# Standard 16 colours, dark (d) and light (l)
d_black = '#282828'
d_red = '#cc241d'
d_green = '#98971a'
d_yellow = '#d79921'
d_blue = '#458588'
d_purple = '#b16286'
d_aqua = '#689d6a'
d_white = '#a89984'
l_black = '#928374'
l_red = '#fb4934'
l_green = '#b8bb26'
l_yellow = '#fabd2f'
l_blue = '#83a598'
l_purple = '#d3869b'
l_aqua = '#8ec07c'
l_white = '#ebdbb2'
# Orange
d_orange = '#d65d0e'
l_orange = '#fe8019'

common_bg = bg
common_fg = fg
completion_bg = common_bg
completion_fg = common_fg
downloads_bg = common_bg
messages_bg = common_bg
statusbar_bg = common_bg
statusbar_fg = common_fg
statusbar_private_bg = '#25003e'                # Firefox private mode colour
tabs_bg = common_bg
tabs_fg = common_fg
tabs_selected_bg = bg2

common_font = '{{ qutebrowser.font_size }} monospace'


# Key bindings
# https://github.com/qutebrowser/qutebrowser/blob/master/doc/help/configuring.asciidoc
# Unbind defaults
config.unbind('<Ctrl-n>', mode='command')
config.unbind('<Ctrl-p>', mode='command')

# Command history bindings 
config.bind('<Down>', 'command-history-next', mode='command')
config.bind('<Up>', 'command-history-prev', mode='command')


# Settings - qute://help/settings.html
c.completion.shrink = True

c.confirm_quit = [
    'multiple-tabs',
    'downloads',
]

# Use bg and fg rather than the matching 16 colours where possible
c.colors.completion.category.bg = bg1
c.colors.completion.category.border.bottom = c.colors.completion.category.bg
c.colors.completion.category.border.top = c.colors.completion.category.bg
c.colors.completion.category.fg = completion_fg
c.colors.completion.even.bg = completion_bg
c.colors.completion.fg = completion_fg
c.colors.completion.item.selected.bg = bg2
c.colors.completion.item.selected.border.bottom \
    = c.colors.completion.item.selected.bg
c.colors.completion.item.selected.border.top \
    = c.colors.completion.item.selected.bg
c.colors.completion.item.selected.fg = completion_fg
c.colors.completion.match.fg = l_blue
c.colors.completion.odd.bg = completion_bg
c.colors.completion.scrollbar.bg = completion_bg
c.colors.completion.scrollbar.fg = bg2
c.colors.downloads.bar.bg = downloads_bg
c.colors.downloads.error.bg = downloads_bg
c.colors.downloads.error.fg = l_red
c.colors.downloads.start.bg = downloads_bg
c.colors.downloads.start.fg = l_orange
c.colors.downloads.stop.bg = downloads_bg
c.colors.downloads.stop.fg = l_green
c.colors.downloads.system.fg = 'none'
c.colors.hints.bg = l_yellow
c.colors.hints.fg = bg0_h
c.colors.hints.match.fg = bg4
c.colors.keyhint.bg = common_bg
c.colors.keyhint.fg = common_fg
c.colors.keyhint.suffix.fg = l_blue
c.colors.messages.error.bg = messages_bg
c.colors.messages.error.border = c.colors.messages.error.bg
c.colors.messages.error.fg = l_red
c.colors.messages.info.bg = messages_bg
c.colors.messages.info.border = c.colors.messages.info.bg
c.colors.messages.info.fg = common_fg
c.colors.messages.warning.bg = messages_bg
c.colors.messages.warning.border = c.colors.messages.warning.bg
c.colors.messages.warning.fg = l_orange
c.colors.prompts.bg = common_bg
c.colors.prompts.fg = common_fg
c.colors.prompts.selected.bg = bg2
c.colors.statusbar.caret.bg = statusbar_bg
c.colors.statusbar.caret.fg = l_yellow
c.colors.statusbar.caret.selection.bg = statusbar_bg
c.colors.statusbar.caret.selection.fg = l_yellow
c.colors.statusbar.command.bg = statusbar_bg
c.colors.statusbar.command.fg = statusbar_fg
c.colors.statusbar.command.private.bg = statusbar_private_bg
c.colors.statusbar.command.private.fg = statusbar_fg
c.colors.statusbar.insert.bg = statusbar_bg
c.colors.statusbar.insert.fg = l_yellow
c.colors.statusbar.normal.bg = statusbar_bg
c.colors.statusbar.normal.fg = statusbar_fg
c.colors.statusbar.passthrough.bg = statusbar_bg
c.colors.statusbar.passthrough.fg = l_yellow
c.colors.statusbar.private.bg = statusbar_private_bg
c.colors.statusbar.private.fg = statusbar_fg
c.colors.statusbar.progress.bg = statusbar_fg
c.colors.statusbar.url.error.fg = l_red
c.colors.statusbar.url.fg = statusbar_fg
c.colors.statusbar.url.hover.fg = fg4
c.colors.statusbar.url.success.http.fg = statusbar_fg
c.colors.statusbar.url.success.https.fg = l_green
c.colors.statusbar.url.warn.fg = l_orange
c.colors.tabs.bar.bg = tabs_bg
c.colors.tabs.even.bg = tabs_bg
c.colors.tabs.even.fg = tabs_fg
c.colors.tabs.indicator.error = l_red
c.colors.tabs.indicator.start = l_orange
c.colors.tabs.indicator.stop = l_green
c.colors.tabs.indicator.system = 'none'
c.colors.tabs.odd.bg = tabs_bg
c.colors.tabs.odd.fg = tabs_fg
c.colors.tabs.selected.even.bg = tabs_selected_bg
c.colors.tabs.selected.even.fg = tabs_fg
c.colors.tabs.selected.odd.bg = tabs_selected_bg
c.colors.tabs.selected.odd.fg = tabs_fg

c.content.headers.accept_language = 'en-GB,en'
{% if 'work' in inventory_hostname_short %}
c.content.proxy = 'http://proxy-chain.intel.com:912'
{% endif %}

# Use XDG_DOWNLOAD_DIR (Linux) or ~/Downloads (Mac)
c.downloads.location.prompt = False
c.downloads.position = 'bottom'

c.editor.command = ['kitty', 'nvim', '{}',]

c.fonts.completion.category = 'bold ' + common_font
c.fonts.completion.entry = common_font
c.fonts.debug_console = common_font
c.fonts.downloads = common_font
c.fonts.hints = '{{ qutebrowser.hint_size }} monospace'
c.fonts.keyhint = common_font
c.fonts.messages.error = common_font
c.fonts.messages.info = common_font
c.fonts.messages.warning = common_font
c.fonts.monospace = 'Source Code Pro'
c.fonts.prompts = common_font
c.fonts.statusbar = common_font
c.fonts.tabs = common_font

c.hints.border = '2px solid ' + l_yellow

c.messages.timeout = 7000

c.new_instance_open_target = 'window'

c.scrolling.bar = 'always'

c.statusbar.padding = {
    'bottom': 8,
    'left': 5,
    'right': 5,
    'top': 0,
}
c.statusbar.widgets = ['keypress', 'url', 'history',]

c.tabs.favicons.show = 'pinned'
c.tabs.indicator.width = 5
c.tabs.last_close = 'close'
c.tabs.padding = {
    'bottom': 2,
    'left': 5,
    'right': 5,
    'top': 2,
}
c.tabs.title.format = '{index}: ({scroll_pos}) {private}{perc}{title}'
c.tabs.title.format_pinned = '{index}: ({scroll_pos})'

c.url.auto_search = 'dns'
c.url.searchengines = {
    'DEFAULT': 'https://encrypted.google.com/search?gl=uk&q={}',
    'd': 'https://duckduckgo.com/?q=!{}',
}

c.window.title_format = '{id}: ({scroll_pos}) {private}{perc}{title}'

