# README

# テーブル設計

## users テーブル                   

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| name     | string | null: false |
| kana     | string | null: false |
| birthday | string | null: false |

### Association

- has_many :items

## items テーブル

| Column          | Type       | Options                       |
| ----------------| ---------- | ------------------------------|
| price           | integer    | null: false                   |
| category        | string     | null: false                   |
| prodact_status  | string     | null: false                   |
| shipping_charges| string     | null: false                   |
| shipping_origin | string     | null: false                   |
|date_of_shipment | string     | null: false                   |
|user             | references | null: false, foreign_key: true|


### Association

- has_one    :transaction
- belongs_to :user

## transactions テーブル

| Column          | Type       | Options                       |        
| ------- --------| ---------- | ----------------------------- |
| card_information| integer    | null: false                   |
| exporation_date | string     | null: false                   |
| security_code   | string     | null: false                   |
| items           | references | null: false, foreign_key: true|

### Association

- belongs_to :item
- has_one    :shipping_adress

## shipping_adress テーブル

| Column                   | Type      | Options                       |        
| -------------------------| ----------| ----------------------------- |
| postal_number            | string    | null: false                   |
| metropolis_and_districts | string    | null: false                   |
| the_municipality         | string    | null: false                   |
| fandi                    | string    | null: false                   |
|building_name             | string    |                               |
|phone_number              | integer   |null: false                    |
|transacitions             |references | null: false, foreign_key: true|

### Association
  belongs_to  :transacitions