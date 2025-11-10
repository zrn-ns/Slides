# Slides

Powered by [reveal-md](https://github.com/webpro/reveal-md)

## 公開ページ

<a href="https://zrn-ns.github.io/Slides/" target="_blank">https://zrn-ns.github.io/Slides/</a>

## 特徴

- マークダウンでスライドを作成
- GitHub Actionsで自動生成・デプロイ
- contentディレクトリの変更をpushするだけで自動公開

## セットアップ（ローカル開発用）

```bash
# Node.jsのインストール
$ brew install node

# reveal-mdのインストール
$ npm install -g reveal-md
```

## プレビュー

```bash
# ローカルでプレビューサーバーを起動
$ reveal-md content/ -w
```

ブラウザで http://localhost:1948 を開く

## スライドの公開方法

1. `content/` ディレクトリにマークダウンファイルを追加・編集
2. masterブランチにpush
3. GitHub Actionsが自動的にHTMLを生成してGitHub Pagesにデプロイ

**注意**: docsディレクトリは自動生成されるため、リポジトリには含まれません


