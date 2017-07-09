# Database設計

## users
**association**
- has_many messages
- has_many group_users
- has_many groups through: :group_users

|column               |type   |option  |
|---------------------|-------|------------|
|name                 |string |null: false |
|email                |string |null: false|
|password             |string |nill: false|

## message
**association**
- belongs_to :group
- belongs_to :user

|column|type|options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|body|text|
|image|string|


## groups
**association**
- has_many messages
- has_many group_users
- belongs_to user through: :group_users

|column    |type      |option |
|----------|----------|-----------|
|group_name|string    |null: false|

## group_users
**association**
- belongs_to :user
- belongs_to :group

|column  |type      |
|--------|----------|
|user_id |references|
|group_id|references|


