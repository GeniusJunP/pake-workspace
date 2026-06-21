# Pake カスタム版アプリ ビルド & インストール
# 使い方: make all (全部) / make youtube (個別)

PAKE_DIR := /Users/junpei/working/_testCode/Pake
PAKE     := node $(PAKE_DIR)/dist/cli.js

.PHONY: all youtube twitter soundcloud instagram clean

all: youtube twitter soundcloud instagram

youtube:
	$(PAKE) https://www.youtube.com --name YouTube \
		--icon ./icons/youtube.icns \
		--inject ./youtube-adblock.css,./universal-tweaks.js \
		--install

twitter:
	$(PAKE) https://twitter.com --name Twitter \
		--icon ./icons/twitter.icns \
		--inject ./twitter-adblock.css,./universal-tweaks.js \
		--install --new-window

soundcloud:
	$(PAKE) https://soundcloud.com --name SoundCloud \
		--icon ./icons/soundcloud.icns \
		--inject ./soundcloud-adblock.css,./universal-tweaks.js \
		--install --new-window

instagram:
	$(PAKE) https://instagram.com --name Instagram \
		--icon ./icons/instagram.icns \
		--inject ./universal-tweaks.js \
		--install --new-window

clean:
	rm -rf YouTube.app Twitter.app SoundCloud.app Instagram.app
