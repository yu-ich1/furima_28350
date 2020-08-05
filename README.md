# README

# テーブル設計

## users テーブル                   

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| name     | string | null: false |
| kana     | string | null: false |
| birthday | string | null: false |

### Association

- has_many :items
- has_one :transaction

## items テーブル

| Column          | Type   | Options     |
| ----------------| ------ | ----------- |
| image           | string | null: false |
| price           | integer| null: false |
| category        | string | null: false |
| user_id         | string | null: false |
| prodact_status  | string | null: false |
| shipping_charges| string | null: false |
| shipping_origin | string | null: false |
|date_of_shipment | string | null: false |


### Association

- has_one    :transaction
- belongs_to :user

## transactions テーブル

| Column  | Type       | Options     |
| ------- | ---------- | ----------- |
| image   | string     | null: false |
| price   | integer    | null: false |
| credit  | string     | null: false |
| address | string     | null: false |
| user_id | string     | null: false |

### Association

- belongs_to :item
- belongs_to :user