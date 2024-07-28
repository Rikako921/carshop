# テーブル設計

## posts テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| price_total        | string | null: false |
| year               | string | null: false, unique: true |
|distance            | string | null: false |
| inspection         | string | null: false |
| color              | string | null: false |
| car_name           | string | null: false |
| car_model          | string | null: false |
| rec_point          | text   | null: false |
| grade              | text   | null: false |
| user               | references| null: false |




### Association

-   belongs_to :user

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| id_number          | string | null: false |
| name               | string | null: false |


### Association

- has_many :posts

##  contactsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     | null: false                    |
| email  | string     | null: false                    |
| phone_number| string | null: false                 |
| message| text       | null: false                    |


### Association
