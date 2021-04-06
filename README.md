## アプリケーション名
clotheseal(クローシール)

## アプリケーション概要	
このアプリケーションでできることを記述しましょう。

## URL	
https://clotheseal.herokuapp.com/

## テスト用アカウント	
ログイン機能等を実装した場合は、記述しましょう。またBasic認証等を設けている場合は、そのID/Passも記述しましょう。

## 利用方法	
このアプリケーションの利用方法を説明しましょう。

## 目指した課題解決	
このアプリケーションを通じて、どのような人の、どのような課題を解決したかったかを書きましょう。

## 洗い出した要件	
スプレッドシートにまとめた要件定義を、マークダウンで記述しなおしましょう。

## 実装した機能についてのGIFと説明	
実装した機能について、それぞれどのような特徴があるのか列挙しましょう。GIFを添えることで、イメージがしやすくなります。

## 実装予定の機能	

洗い出した要件の中から、今後実装予定のものがあれば記述しましょう。



## テーブル設計
データベース設計	ER図等を添付しましょう。

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


## ローカルでの動作方法	
git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。この時、アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）。
