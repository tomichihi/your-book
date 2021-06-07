# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users テーブル

| Column            | Type   | Options     |
| --------          | ------ | ----------- |

| email             | string | null: false,unique: true |
| encrypted_password| string | null: false |
| name              | string | null: false |

has_many :introduces
has_many :comments

## intros テーブル
| Column            | Type      | Options     |
| --------          | ------    | ----------- |
| book              | text      | null: false |
| review            | text      | null: false |
| genre             |references | null: false,foreign_key: true|
| user              |references | null: false,foreign_key: true|

belongs_to :user
belongs_to :genre
has_many   :comments

## comments テーブル
| Column     | Type       | Options     |
| --------   | ------     | ----------- |
| comment    | text       | null: false |
| user       | references | null: false,foreign_key :true|
| intro      | references | null: false,foreign_key :true|

belongs_to :user
belongs_to :intro

## profiles
| Column     | Type       | Options    |
| --------   | ------     | -----------|
| hobby      | string     | null: false|
| favorite   | text       | null: false|
| comment    | text       | null: false|
| user       |references  | null: false|
foreign_key:true|

belongs_to :user

##  genres

| Column     | Type       | Options    |
| --------   | ------     | -----------|
| name       | text       | |

has_many :intros

## likes

| Column     | Type       | Options    |
| --------   | ------     | -----------|
| user       | references | null:false |  foreign_key:true|
| intro      | references | null:false |
foreign_key:true|

belongs_to :user
belongs_to :intro

## rooms
| Column     | Type       | Options    |
| --------   | ------     | -----------|
| name       | string     | null:false |
has_many :user_rooms, dependent: :destroy
has_many :users, through: :user_rooms
has_many :messages, dependent: :destroy

## user_rooms
| Column     | Type       | Options    |
| --------   | ------     | -----------|
| user       | references | foreign_key,null:false |
| room       | references | foreign_key,null:false |
belongs_to :user
belongs_to :room

## messages
| Column     | Type       | Options    |
| --------   | ------     | -----------|
| content    | text       |
| null:false              |
| user       | references | null:false |
foreign_key:true|
| room       | references | null:false |
foreign_key:true|
belongs_to :room
belongs_to :user

## payment
| Column     | Type       | Options    |
| --------   | ------     | -----------|
| price      | integer    | null:false |
| user       |references  | null:false |
foreign_key:true|

belongs_to :user