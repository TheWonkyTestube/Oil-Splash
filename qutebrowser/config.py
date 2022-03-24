#                                                                  ░█████╗░░█████╗░███╗░░██╗███████╗
#                                                                  ██╔══██╗██╔══██╗████╗░██║██╔════╝
#                                                                  ██║░░╚═╝██║░░██║██╔██╗██║█████╗░░
#                                                                  ██║░░██╗██║░░██║██║╚████║██╔══╝░░
#                                                                  ╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░
#                                                                  ░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░

cat={
        'black0'    :   '#010204',
        'black1'    :   '#0b1016',
        'black2'    :   '#111822',
        'black3'    :   '#1a202e',

        'white1'    :   '#e5e9f5',
        'white2'    :   '#acbed4',
        'white3'    :   '#d7b9bb',


        'blue0'     :   '#02e9e1',
        'blue1'     :   '#02bfe9',
        'blue3'     :   '#049be2',
        'blue4'     :   '#005bce',
        'red'       :   '#e10d00',
        'orange'    :   '#fe5500',
        'yellow'    :   '#f2a301',
        'green'     :   '#01a546',
        'magenta'   :   '#d8458c',
        }
#Tell Qutebrowser to use this config file
config.load_autoconfig()

#Command Widget Colours
c.colors.completion.category.border.bottom=(cat['black0'])
c.colors.completion.category.border.top=(cat['black0'])
c.colors.completion.fg=(cat['blue3'])
c.colors.completion.even.bg=(cat['black2'])
c.colors.completion.fg=[cat['red'],cat['green'],cat['blue3']]
c.colors.completion.item.selected.bg=cat['black3']
c.colors.completion.item.selected.border.top=cat['white1']
c.colors.completion.item.selected.border.bottom=cat['white1']
c.colors.completion.item.selected.fg=cat['white1']
c.colors.completion.item.selected.match.fg=cat['magenta']
c.colors.completion.match.fg=cat['blue3']
c.colors.completion.odd.bg=cat['black0']
c.colors.completion.scrollbar.bg=cat['black3']
c.colors.completion.scrollbar.fg=cat['white1']

#Hints Widget Colours
c.colors.hints.bg=cat['black0']
c.colors.hints.fg=cat['blue3']
c.colors.hints.match.fg=cat['green']
c.hints.border="0px"

#Statusbar Colors
c.colors.statusbar.caret.bg=cat['black2']
c.colors.statusbar.caret.fg=cat['magenta']
c.colors.statusbar.caret.selection.bg=cat['white1']
c.colors.statusbar.caret.selection.fg=cat['black0']

c.colors.statusbar.command.bg=cat['black2']
c.colors.statusbar.command.fg=cat['blue3']

c.colors.statusbar.insert.bg=cat['black2']
c.colors.statusbar.insert.fg=cat['green']

c.colors.statusbar.normal.bg=cat['black2']
c.colors.statusbar.normal.fg=cat['white1']

c.colors.statusbar.url.fg=cat['white1']
c.colors.statusbar.progress.bg=cat['blue3']
c.colors.statusbar.url.error.fg=cat['red']
c.colors.statusbar.url.hover.fg=cat['orange']
c.colors.statusbar.url.success.http.fg=cat['blue0']
c.colors.statusbar.url.warn.fg=cat['magenta']

#Tab Colors
c.colors.tabs.bar.bg=cat['blue0']
c.colors.tabs.even.bg=cat['black0']
c.colors.tabs.even.fg=cat['blue0']
c.colors.tabs.odd.bg=cat['black0']
c.colors.tabs.odd.fg=cat['blue0']
c.colors.tabs.indicator.error=cat['red']
c.colors.tabs.indicator.start=cat['red']
c.colors.tabs.indicator.stop=cat['orange']

c.colors.tabs.selected.even.bg=cat['black2']
c.colors.tabs.selected.even.fg=cat['orange']
c.colors.tabs.selected.odd.bg=cat['black2']
c.colors.tabs.selected.odd.fg=cat['orange']


#Color Settings, Including Darkmode
c.colors.webpage.darkmode.enabled=True

#fonts
c.fonts.default_family="Cantarell"



#Padding and Size settings
c.hints.padding={'bottom':5,'left':5,'right':5,'top':5}
c.completion.height=150
c.statusbar.padding={'bottom':5,'left':5,'right':5,'top':5}
c.tabs.favicons.scale=1.6
c.tabs.padding={'bottom':5,'left':5,'right':5,'top':5}
c.tabs.show="always"

#General Settings
c.auto_save.session=True
c.url.start_pages = ["file:///home/will/Coding/internet Coding/homepage/Homepage.html"]
c.url.default_page= "file:///home/will/Coding/internet Coding/homepage/Homepage.html"
c.confirm_quit=["multiple-tabs", "downloads"]
c.scrolling.smooth=True
c.url.searchengines={"DEFAULT":'https://www.ecosia.org/search?method=index&q={}'}






