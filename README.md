# Database設計

## users
**association**
- has_many messages
- has_many group_users
- has_many groups through: :group_users

|column               |type   |option  |
|:--------------------|:------|:-----------|
|id                   |integer|
|name                 |string |null: false |
|email                |string |null: false|
|password             |string |nill: false|

## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

**association**
- belongs_to :group
- belongs_to :user

## groups
**association**
- has_many messages
- has_many group_users
- belongs_to users through: :group_users

|column    |type      |option |
|:---------|:---------|:----------|
|id        |integer   |           |
|group_name|string    |null: false|

## group_users
**association**
belongs_to :user
belongs_to :group

|column  |type      |
|:-------|:---------|
|id      |integer   |
|user_id |references|
|group_id|references|


