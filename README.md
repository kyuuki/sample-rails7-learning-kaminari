Rails 7 CRUD 学習サンプル
=========================

[![Build status][shield-build]](#)
[![MIT licensed][shield-license]](#)
[![Rails][shield-rails]][rails]

Scaffold で CRUD を実装する際のサンプル

## Table of Contents

* [Technologies](#technologies)
* [How to make](#how-to-make)
* [Usage](#usage)
* [References](#references)
* [License](#license)

## Technologies

* [Rails][rails] 7.0.4.3
* [PostgreSQL][postgresql]

## How to make

### Rails アプリケーション作成

```sh
$ git clone git@github.com:kyuuki/sample-rails7-base.git sample-rails7-learning-crud
$ cd sample-rails7-learning-crud
```

### GitHub

- GitHub に sample-rails7-learning-crud という名前でリポジトリ追加

```sh
$ git remote set-url origin git@github.com:kyuuki/sample-rails7-learning-crud.git
$ git push
```

### Scaffold

- Scaffold で CRUD のベースを作成
  - Helper は追加しない
- https://www.rubyguides.com/2020/03/rails-scaffolding/
- 記事によってモデルの指定方法が色々あるが rails g scaffold -h で表示される小文字、単数形で実施する
  - rails g scaffold books
  - rails g scaffold Book
  - rails g scaffold book

```sh
$ rails g scaffold book title:string author:string publication_year:integer --no-helper
$ rails db:migrate
```

### バリデーション追加

- モデルにバリデーション追加
- エラー時の CSS を追加

### 国際化・多言語化 (i18n) 対応

- Gem rails-i18n を追加
- default_locale を ja に
- config/locales/ja.yml にモデルの翻訳追加

### config/locales/ja.yml にモデルの翻訳追加

- コントローラに書いてある flush メッセージを日本語化
- HTML に書いてある英語を日本語化

### ルートページに本一覧へのリンクを追加

## Usage

```sh
$ git clone git@github.com:kyuuki/sample-rails7-learning-crud.git
$ cd sample-rails7-learning-crud
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails s -b 0.0.0.0
```

## References

* [Ruby on Rails Guides (v7.0.x) (英)](https://guides.rubyonrails.org/v7.0/)
* [Ruby on Rails ガイド (日)](https://railsguides.jp/)

## License

This is licensed under the [MIT](https://choosealicense.com/licenses/mit/) license.  
Copyright &copy; 2023 [Fuji Programming Laboratory](https://fuji-labo.com/)



[rails]: https://rubyonrails.org/
[postgresql]: https://www.postgresql.org/

[shield-build]: https://img.shields.io/badge/build-passing-brightgreen.svg
[shield-license]: https://img.shields.io/badge/license-MIT-blue.svg
[shield-rails]: https://img.shields.io/badge/-Rails-CC0000.svg?logo=ruby-on-rails&style=flat
