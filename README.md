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
- has_one    :buyer

## shippings

|Column                     |Type        |Options                        |
|---------------------------|------------|-------------------------------|
|buyer                      |reference   |null: false, foreign_key: true |
|prefecture                 |integer     |null: false                    |
|city                       |string      |null: false                    |
|building                   |string      |
|address                    |string      |null: false                    |
|post_code                  |string      |null: false                    |
|phone_number               |string      |null: false                    |


### Association
- belongs_to :buyer

## items

|Column                        |Type      |Options                        |
|------------------------------|----------|-------------------------------|
|user                          |reference |null: false, foreign_key: true |
|price                         |integer   |null: false                    |
|name                          |string    |null: false                    |
|description                   |text      |null: false                    |
|condition_id                  |integer   |null: false                    |
|category_id                   |integer   |null: false                    |
|delivery_fee_id               |integer   |null: false                    |
|area_id                       |integer   |null: false                    |
|delivery_day_id               |integer   |null: false                    |


### Association
- belongs_to :user
- has_one    :buyer


## buyers

|Column  |Type      |Options                        |
|--------|----------|-------------------------------|
|item    |references|null: false, foreign_key: true |
|user    |references|null: false, foreign_key: true |


### Association
- has_one    :shipping
- belongs_to :item
- belongs_to :user