# See the setting reference within qutebrowser - qute://help/settings.html
c.completion.shrink = True

c.confirm_quit = [
    'multiple-tabs',
    'downloads'
]

c.colors.completion.category.bg = '#3c3836'
c.colors.completion.category.border.bottom = '#3c3836'
c.colors.completion.category.border.top = '#3c3836'
c.colors.completion.category.fg = '#ebdbb2'
c.colors.completion.even.bg = '#282828'
c.colors.completion.fg = '#ebdbb2'
c.colors.completion.item.selected.bg = '#504945'
c.colors.completion.item.selected.border.bottom = '#504945'
c.colors.completion.item.selected.border.top = '#504945'
c.colors.completion.item.selected.fg = '#ebdbb2'
c.colors.completion.match.fg = '#fe8019'
c.colors.completion.odd.bg = '#282828'
c.colors.completion.scrollbar.bg = '#282828'
c.colors.completion.scrollbar.fg = '#3c3836'
c.colors.downloads.bar.bg = '#282828'
c.colors.downloads.error.bg = '#282828'
c.colors.downloads.error.fg = '#fb4934'
c.colors.downloads.start.bg = '#282828'
c.colors.downloads.start.fg = '#fabd2f'
c.colors.downloads.stop.bg = '#282828'
c.colors.downloads.stop.fg = '#b8bb26'
c.colors.downloads.system.fg = 'none'
c.colors.hints.bg = '#fabd2f'
c.colors.hints.fg = '#1d2021'
c.colors.hints.match.fg = '#7c6f64'
c.colors.keyhint.bg = '#282828'
c.colors.keyhint.fg = '#ebdbb2'
c.colors.keyhint.suffix.fg = '#fe8019'
c.colors.messages.error.bg = '#282828'
c.colors.messages.error.border = '#282828'
c.colors.messages.error.fg = '#fb4934'
c.colors.messages.info.bg = '#282828'
c.colors.messages.info.border = '#282828'
c.colors.messages.info.fg = '#ebdbb2'
c.colors.messages.warning.bg = '#282828'
c.colors.messages.warning.border = '#282828'
c.colors.messages.warning.fg = '#fb4934'
c.colors.prompts.bg = '#282828'
c.colors.prompts.fg = '#ebdbb2'
c.colors.prompts.selected.bg = '#504945'
c.colors.statusbar.caret.bg = '#282828'
c.colors.statusbar.caret.fg = '#fabd2f'
c.colors.statusbar.caret.selection.bg = '#282828'
c.colors.statusbar.caret.selection.fg = '#fabd2f'
c.colors.statusbar.command.bg = '#282828'
c.colors.statusbar.command.fg = '#ebdbb2'
c.colors.statusbar.command.private.bg = '#25003e'
c.colors.statusbar.command.private.fg = '#ebdbb2'
c.colors.statusbar.insert.bg = '#282828'
c.colors.statusbar.insert.fg = '#fabd2f'
c.colors.statusbar.normal.bg = '#282828'
c.colors.statusbar.normal.fg = '#ebdbb2'
c.colors.statusbar.private.bg = '#25003e'
c.colors.statusbar.private.fg = '#ebdbb2'
c.colors.statusbar.progress.bg = '#ebdbb2'
c.colors.statusbar.url.error.fg = '#fb4934'
c.colors.statusbar.url.fg = '#ebdbb2'
c.colors.statusbar.url.hover.fg = '#a89984'
c.colors.statusbar.url.success.http.fg = '#ebdbb2'
c.colors.statusbar.url.success.https.fg = '#b8bb26'
c.colors.statusbar.url.warn.fg = '#fb4934'
c.colors.tabs.bar.bg = '#282828'
c.colors.tabs.even.bg = '#282828'
c.colors.tabs.even.fg = '#ebdbb2'
c.colors.tabs.indicator.error = '#fb4934'
c.colors.tabs.indicator.start = '#fabd2f'
c.colors.tabs.indicator.stop = '#b8bb26'
c.colors.tabs.indicator.system = 'none'
c.colors.tabs.odd.bg = '#282828'
c.colors.tabs.odd.fg = '#ebdbb2'
c.colors.tabs.selected.even.bg = '#504945'
c.colors.tabs.selected.even.fg = '#ebdbb2'
c.colors.tabs.selected.odd.bg = '#504945'
c.colors.tabs.selected.odd.fg = '#ebdbb2'

c.content.headers.accept_language = 'en-GB,en'

c.downloads.location.prompt = False                     # Use XDG_DOWNLOAD_DIR
c.downloads.position = 'bottom'

c.editor.command = ['kitty', 'nvim', '{}']

c.fonts.completion.category = 'bold {{ qutebrowser.font_size }} monospace'
c.fonts.completion.entry = '{{ qutebrowser.font_size }} monospace'
c.fonts.debug_console = '{{ qutebrowser.font_size }} monospace'
c.fonts.downloads = '{{ qutebrowser.font_size }} monospace'
c.fonts.hints = '{{ qutebrowser.hint_size }} monospace'
c.fonts.keyhint = '{{ qutebrowser.font_size }} monospace'
c.fonts.messages.error = '{{ qutebrowser.font_size }} monospace'
c.fonts.messages.info = '{{ qutebrowser.font_size }} monospace'
c.fonts.messages.warning = '{{ qutebrowser.font_size }} monospace'
c.fonts.monospace = 'Source Code Pro'
c.fonts.prompts = '{{ qutebrowser.font_size }} monospace'
c.fonts.statusbar = '{{ qutebrowser.font_size }} monospace'
c.fonts.tabs = '{{ qutebrowser.font_size }} monospace'

c.hints.border = '2px solid #fabd2f'

c.messages.timeout = 2500

c.scrolling.bar = True

c.tabs.last_close = 'close'
c.tabs.show = 'multiple'

c.url.auto_search = 'dns'
c.url.searchengines = {
    'DEFAULT': 'https://encrypted.google.com/search?gl=uk&q={}',
    'd': 'https://duckduckgo.com/?q=!{}'
}

c.window.title_format = '{id}: {perc}{title} ({scroll_pos})'

