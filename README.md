## アプリケーション名
clotheseal(クローシール)

## アプリケーション概要	
着用した服装と着用日を記録できるアプリケーション。

## URL	
https://clotheseal.herokuapp.com/

## テスト用アカウント	
# Basic認証
ID：admin
Password：p@ssw0rd

# ユーザー情報1
メールアドレス：test@test.com
パスワード：test1234


## 利用方法	
1.アプリケーションにアクセス
2.トップページから「新規登録」または「ログイン」する
3.右上の「＋」を押下し写真と着用日を選択する
4.「MyPage」にて3で選択した情報が表示されていることを確認する
5.アプリケーションを終了する場合は「ログアウト」を押下する


## 目指した課題解決	
現在コロナ禍で、仕事やプライベートで出社や出かけることが減少している。
そのため、再度会う時に期間が空くと予想される。
このアプリケーションに服装を日付ごとに保管することによって、以前着用したものと同じ服装になることを防げる・

## 洗い出した要件	
|              | 
| ------------------ | 
| nickname           | 
| email              |
| encrypted_password | 
| gender             | 
| birthday           | d

## 実装した機能についてのGIFと説明	
| 実装機能           |
| ----------------- | 
| ユーザー管理        | 
| 写真投稿           |
| 服装情報の編集・削除 |
  

## 実装予定の機能	
・検索機能(着用日で検索)


### users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| gender             | integer | null: false               |
| birthday           | date    | null: false               |

#### Association

- has_many :cloths


### cloths テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| wear_day           | date       | null: false                    |
| user               | references | null: false, foreign_key: true |

#### Association

- belongs_to :user
