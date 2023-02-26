# アプリケーション名
Cosme Box


# アプリケーション概要
手持ちコスメの管理ができ、他のユーザーの手持ちコスメを覗くことができる。


# URL
https://cosmebox.onrender.com/


# テスト用アカウント
・Basic認証ID：admin<br>
・Basic認証パスワード：2222<br>
・メールアドレス：miura@gmail.com<br>
・パスワード：aaa111<br>


# 利用方法

## コスメ投稿
1.「New Cosme」ボタンを押す。<br>
2.入力画面にコスメの内容（ブランド名・カテゴリー・商品名・メモ）を入力する。<br>
3.「POST」ボタンを押す。<br>
4.トップページに一覧表示される。<br>


## 他者の手持ちコスメを見る
【プロフィール情報から見る方法】<br>
1.トップページの検索アイコンを押す<br>
2.入力画面の検索ワードを選択する。<br>
3.「SEARCH」ボタンを押す<br>
4.画面下部に検索結果が表示される。<br>


# アプリを作成した背景
私自身、コスメを集めることが好きで既存のコスメ管理アプリを使用していますが、自己管理がメインの機能になっており、他のユーザーの手持ちコスメを見れたらより楽しいなと思っていました。<br>
そこで、手持ちコスメの管理だけでなく、シェアを行うことで、ユーザー同士で美容のモチベーションを向上できるSNSアプリケーションを開発することにしました。


# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1zWZRKlVfFFPCrZWSvo6b2nzWSWcVYRHJ6yjZxkwTHGk/edit#gid=982722306)


# 実装した機能についての画像やGIFおよびその説明
【signin画面】
<a href="https://gyazo.com/85a070feb256fb9a14fe1a368a0afd44"><img src="https://i.gyazo.com/85a070feb256fb9a14fe1a368a0afd44.gif" alt="Image from Gyazo" width="1000"/></a>
「SIGNIN」ボタンで新規登録画面へ、「LOGIN」ボタンでサインイン画面に切り替えることが出来ます。<br><br>

【検索画面】
<a href="https://gyazo.com/3c50c87b3c0aceebfbd4c77de11affa9"><img src="https://i.gyazo.com/3c50c87b3c0aceebfbd4c77de11affa9.gif" alt="Image from Gyazo" width="1000"/></a>
新規登録画面で入力したプロフィール内容を元にユーザーを検索することが出来ます。


# 実装予定の機能
・カテゴリー別の一覧表示機能
・検索機能(プロフィール情報、cosme情報どちらでも可)<br>
・消費期限をお知らせしてくれるカレンダー機能<br>
・cosmeのスターレーティング機能
・ユーザー同士のフォロー機能


# データベース設計
[![Image from Gyazo](https://i.gyazo.com/533ce1fdc863e708f8840a103f22389f.png)](https://gyazo.com/533ce1fdc863e708f8840a103f22389f)


# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/2b283054193f5418b4e27701122cb09c.png)](https://gyazo.com/2b283054193f5418b4e27701122cb09c)

# 開発環境
・フロントエンド<br>
・バックエンド<br>
・インフラ<br>
・テスト<br>
・テキストエディタ<br>
・タスク管理


# ローカルでの動作方法
以下のコマンドを順に実行。<br>
% git clone https://github.com/miurachikaa/cosmebox.git<br>
% cd cosmebox<br>
% bundle install<br>
% yarn install


# 工夫したポイント
コスメのアプリなので可愛いを詰め込みたく、自身も使用したくなるようなワクワクするデザインを選びました。<br>
検索機能に関しまして、"ransack"というGemを使用し、検索のフォームを作成いたしました。<br>
コスメ検索ではなくユーザー検索にした理由は、私自身が同じ年代や肌質の方がどんなコスメを使用しているかを参考にしてコスメ選びをしているためです。

