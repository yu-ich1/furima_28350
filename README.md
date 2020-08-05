# README

# テーブル設計

## users テーブル                   

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| nickname   | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| first_name | string | null: false |
| family_name| string | null: false |
| furigana   | string | null: false |
| date       | string | null: false |


### Association

- has_many :items

## items テーブル

| Column          | Type       | Options                       |
| ----------------| ---------- | ------------------------------|
| price           | integer    | null: false                   |
|user             | references | null: false, foreign_key: true|


### Association

- has_one    :item_purchases
- belongs_to :user

## item_purchases テーブル

| Column          | Type       | Options                       |        
| ------- --------| ---------- | ----------------------------- |
| items           | references | null: false, foreign_key: true|

### Association

- belongs_to :item
- has_one    :shipping_adress

## shipping_adress テーブル

| Column        | Type      | Options                       |        
| --------------| ----------| ----------------------------- |
| postal_number | string    | null: false                   |
| birthplace    | string    | null: false                   |
| municipality  | string    | null: false                   |
| house_number  | string    | null: false                   |
|building_name  | string    |                               |
|phone_number   | string    |null: false                    |
|item_purchases |references | null: false, foreign_key: true|

### Association
  belongs_to  :item_purchases