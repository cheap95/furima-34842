# README
# ## users

|Column                    |Type      |Options                    |
|--------------------------|----------|---------------------------|
|nickname                  |string    |null: false                |
|first_family_name         |string    |null: false                |
|last_family_name          |string    |null: false                |
|first_family_name_kana    |string    |null: false                |
|last_family_name_kana     |string    |null: false                |
|email                     |string    |null: false, unique:true   |
|encrypted_password        |string    |null: false                |
|birthday                  |date      |null: false                |

### Association
- has_many   :items
- has_one    :shipping 

## shippings

|Column                     |Type        |Options                        |
|---------------------------|------------|-------------------------------|
|user_id                    |reference   |null: false, foreign_key: true |
|prefectures                |string      |null: false                    |
|city                       |string      |null: false                    |
|address                    |string      |null: false                    |
|post_code                  |string      |null: false                    |
|phone_number               |string      |null: false                    |


### Association
- belongs_to :user

## items

|Column                     |Type      |Options                        |
|---------------------------|----------|-------------------------------|
|user_id                    |string    |null: false, foreign_key: true |
|price                      |integer   |null: false                    |
|item_name                  |string    |null: false                    |
|item_description           |text      |null: false                    |
|condition                  |integer   |null: false                    |
|category                   |integer   |null: false                    |
|delivery_fee               |integer   |null: false                    |
|area                       |integer   |null: false                    |
|delivery_day               |integer   |null: false                    |


### Association
- belongs_to :user


## buyer

|Column  |Type      |Options                        |
|--------|----------|-------------------------------|
|item_id |reference |null: false, foreign_key: true |
|user_id |reference |null: false, foreign_key: true |


### Association
- has_one :shipping

## 

|Column|Type     |Options                        |
|------|---------|-------------------------------|
|
|


### Association
