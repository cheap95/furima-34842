# README
# ## users

|Column                    |Type      |Options       |
|--------------------------|----------|--------------|
|nickname                  |string    |null: false   |
|first_family_name         |string    |null: false   |
|last_family_name          |string    |null: false   |
|first_family_name_kana    |string    |null: false   |
|last_family_name_kana     |string    |null: false   |
|email                     |string    |unique:true   |
|email                     |string    |null: false   |
|password                  |string    |null: false   |
|encrypted_password        |string    |null: false   |
|birthday                  |date      |null: false   |

### Association
- has_many   :items
- belongs_to :shipping
- belongs_to :card

## shippings

|Column                     |Type     |Options                        |
|---------------------------|---------|-------------------------------|
|user_id                    |string   |null: false, foreign_key: true |
|prefectures                |string   |null: false                    |
|city                       |string   |null: false                    |
|address                    |string   |null: false                    |
|post_code                  |string   |null: false                    |
|phone_number               |string   |null: false                    |


### Association
- belongs_to :user

## items

|Column                     |Type     |Options                        |
|---------------------------|---------|-------------------------------|
|user_id                    |string   |null: false, foreign_key: true |
|image                      |string   |null: false                    |
|price                      |string   |null: false                    |
|item_name                  |string   |null: false                    |
|item_description           |string   |null: false                    |
|status                     |string   |null: false                    |
|category                   |string   |null: false                    |
|delivery_fee               |string   |null: false                    |
|area                       |string   |null: false                    |
|delivery_day               |string   |null: false                    |


### Association
- belongs_to :user
- has_man    :images

## cards

|Column  |Type   |Options                        |
|--------|-------|-------------------------------|
|user_id |string |null: false, foreign_key: true |
|card_id |string |null: false, foreign_key: true |


### Association
- belongs_to :user

## images

|Column|Type     |Options                        |
|------|---------|-------------------------------|
|item_id |string |null: false, foreign_key: true |
|


### Association
- belongs_to :item