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
| date       | date   | null: false |


### Association

- has_many :items
- has_one  :item_purchase


## items テーブル

| Column          | Type       | Options                       |
| ----------------| ---------- | ------------------------------|
| prodact_name    | string     | null: false                   |
| explanation     | text       | null: false                   |
| category        | integer    | null: false                   |
| prodact_status  | integer    | null: false                   |
| shipping_charges| integer    | null: false                   |
| shipping_origin | integer    | null: false                   |
|date_of_shipment | integer    | null: false                   |
|user             | references | null: false, foreign_key: true|


### Association

- has_one    :item_purchase
- belongs_to :user
- has_one    :adress


## item_purchases テーブル

| Column | Type       | Options                       |        
| -------| ---------- | ----------------------------- |
| item   | references | null: false, foreign_key: true|
| user   | references | null: false, foreign_key: true|

### Association

- belongs_to :item
- belongs_to :user

## adress テーブル

| Column        | Type      | Options                       |        
| --------------| ----------| ----------------------------- |
| postal_number | string    | null: false                   |
| birthplace    | string    | null: false                   |
| municipality  | string    | null: false                   |
| house_number  | string    | null: false                   |
|building_name  | string    |                               |
|phone_number   | string    | null: false                   |
| item          |references | null: false, foreign_key: true|

### Association
  belongs_to  :item