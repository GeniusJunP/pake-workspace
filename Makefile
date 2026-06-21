# Pake カスタム版アプリ ビルド & インストール
# 使い方: make all (全部) / make youtube (個別)

PAKE_DIR := ./Pake
PAKE     := node $(PAKE_DIR)/dist/cli.js

.PHONY: all youtube twitter soundcloud instagram clean

all: youtube twitter soundcloud instagram

youtube:
	$(PAKE) https://www.youtube.com --name YouTube \
		--icon ./icons/youtube.icns \
		--inject ./youtube-tweaks.css,./universal-tweaks.js \
		--install

twitter:
	$(PAKE) https://x.com --name Twitter \
		--icon ./icons/twitter.icns \
		--inject ./twitter-tweaks.css,./universal-tweaks.js \
		--user-agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15" \
		--install --new-window --debug

soundcloud:
	$(PAKE) https://soundcloud.com --name SoundCloud \
		--icon ./icons/soundcloud.icns \
		--inject ./soundcloud-tweaks.css,./universal-tweaks.js \
		--install --new-window

instagram:
	$(PAKE) https://instagram.com --name Instagram \
		--icon ./icons/instagram.icns \
		--inject ./instagram-tweaks.js,./universal-tweaks.js \
		--install --new-window

clean:
	rm -rf YouTube.app Twitter.app SoundCloud.app Instagram.app
