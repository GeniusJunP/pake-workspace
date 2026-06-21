# Pake Workspace

Pakeのカスタム版を使って、macOS向けに専用のデスクトップアプリをビルドするためのワークスペースです。
各アプリに合わせた独自スタイル（CSS）や挙動（JavaScript）を注入するための設定が含まれています。

## 準備

### 1. サブモジュールの初期化
Pake本体のカスタムフォークをサブモジュールとして読み込んでいます。クローン後、以下のコマンドを実行してください。
```bash
git submodule update --init --recursive
```

### 2. アイコンの用意
ライセンス上の理由から、アプリのアイコン画像（`.icns`）はリポジトリに含めていません。
ビルドする前に、各自で以下のアイコンを用意して `icons/` ディレクトリに配置してください。

* `icons/youtube.icns`
* `icons/twitter.icns`
* `icons/soundcloud.icns`
* `icons/instagram.icns`

## ビルド方法

すべてのアプリを一括でビルドする場合：
```bash
make all
```

個別にビルドする場合：
```bash
make twitter
make youtube
make soundcloud
make instagram
```

ビルドが完了すると、同じディレクトリ内にアプリ（例: `Twitter.app`）が生成され、自動的に `/Applications` フォルダへインストールされます。
