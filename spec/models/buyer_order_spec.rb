require 'rails_helper'

RSpec.describe BuyerOrder, type: :model do
  before do
    @user_id = FactoryBot.create(:user)
    @item_id = FactoryBot.create(:item)
    @buyer_order = FactoryBot.build(:buyer_order, user_id: @user_id.id, item_id: @item_id.id)
    sleep 0.1
  end 
  describe 'ユーザー商品購入' do
    context '購入できるとき' do
      it 'トークンがある' do
        expect(@buyer_order).to be_valid
      end
      it '郵便番号がある' do
        expect(@buyer_order).to be_valid
      end
      it '都道府県がある' do
        expect(@buyer_order).to be_valid
      end
      it '市町村がある' do
        expect(@buyer_order).to be_valid
      end
      it '番地がある' do
        expect(@buyer_order).to be_valid
      end
      it '電話番号がある' do
        expect(@buyer_order).to be_valid
      end
      it '建物名が空でもできる' do
        expect(@buyer_order).to be_valid
      end
    end
    context '購入できないとき' do
      it 'トークンがない' do
        @buyer_order.token = ''
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include("Token can't be blank")
      end
      it '郵便番号がない' do
        @buyer_order.post_code = ''
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include('Post code is invalid')
      end
      it '郵便番号に数字以外が使われている' do
        @buyer_order.post_code = '111-111あ'
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include('Post code is invalid')
      end
      it '郵便番号に-がない' do
        @buyer_order.post_code = '1112222'
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include('Post code is invalid')
      end
      it '郵便番号の桁がおかしい' do
        @buyer_order.post_code = '1112-333'
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include('Post code is invalid')
      end
      it '都道府県がない' do
        @buyer_order.area_id = ''
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include("Area can't be blank")
      end
      it '都道府県が０ではできない' do
        @buyer_order.area_id = 0
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include("Area must be other than 0")
      end
      it '市町村がない' do
        @buyer_order.city = ''
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include("City can't be blank")
      end
      it '市町村に英字がある' do
        @buyer_order.city = 'aaa'
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include('City is invalid')
      end
      it '市町村に数字がある' do
        @buyer_order.city = 11
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include('City is invalid')
      end
      it '番地がない' do
        @buyer_order.address = ''
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include("Address can't be blank")
      end
      it '電話番号がない' do
        @buyer_order.phone_number = ''
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include("Phone number can't be blank")
      end
      it '電話番号が10,11桁ではない' do
        @buyer_order.phone_number = '090123456789'
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include('Phone number is invalid')
      end  
      it '電話番号が英数混合ではない' do
        @buyer_order.phone_number = '0901234567a'
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include('Phone number is invalid')
      end
      it 'user_idが空ではない' do
        @buyer_order.user_id = ''
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include("User can't be blank")
      end
      it 'item_idが空ではない' do
        @buyer_order.item_id = ''
        @buyer_order.valid?
        expect(@buyer_order.errors.full_messages).to include("Item can't be blank")
      end
    end
  end
end
