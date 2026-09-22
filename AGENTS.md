# AGENTS.md

This file provides guidance to AI coding agents when working with code in this repository.

## リポジトリ概要

これはNovalumo用のHomebrew tapリポジトリです。カスタムFormulaとCasksを管理しています。

## ディレクトリ構造

- `Formula/` - Homebrew formula（コマンドラインツール）を配置
- `Casks/` - Homebrew cask（GUIアプリケーション）を配置

## Formula開発時の注意点

### Formulaの基本構造

Formulaファイルは以下の要素を含む必要があります：
- `desc` - ツールの説明
- `homepage` - プロジェクトのホームページURL
- `url` - ソースコードのダウンロードURL
- `sha256` - ダウンロードファイルのSHA256チェックサム
- `install` - インストール手順
- `test` - テストブロック

### よく使うコマンド

```bash
# Formulaの文法チェック
brew audit --new-formula Formula/<formula_name>.rb

# Formulaのテスト実行
brew test Formula/<formula_name>.rb

# SHA256の取得
shasum -a 256 <downloaded_file>
```

## Tap管理

```bash
# このtapをローカルでテスト
brew tap --force novalumo/tap .

# tapの削除
brew untap novalumo/tap
```
