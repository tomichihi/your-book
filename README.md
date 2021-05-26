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
| Column            | Type   | Options     |
| --------          | ------ | ----------- |
| book              | text   | null: false |
| review            | text   | null: false |
| category          | string | null: false |
| image             |        |             |

belongs_to :user
has_many   :comments

## comments テーブル
| Column     | Type       | Options     |
| --------   | ------     | ----------- |
| comment    | text       | null: false |
| user       | references | null: false,foreign_key :true|
| introduce  | references | null: false,foreign_key :true|

belongs_to :user
belongs_to :intro
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      