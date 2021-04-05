require 'rails_helper'

RSpec.describe Order, type: :model do
  before do
    @order = FactoryBot.build(:order)
  end
  describe "ユーザー新規登録" do
    context "新規登録できるとき" do
      it "" do
        expect(@order).to be_valid
       end
       it "" do
        expect(@order).to be_valid
       end
       it "" do
        expect(@order).to be_valid
       end
       it "" do
        expect(@order).to be_valid
       end
       it "" do
        expect(@order).to be_valid
       end
       it "" do
        expect(@order).to be_valid
       end     
    end
    context "新規登録できないとき" do
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "" do
        @order.nickname = ""
        @order.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      
  end
end
