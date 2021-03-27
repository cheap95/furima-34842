require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end
  describe "ユーザーの出品機能" do
    context "ユーザーは出品できる" do
      it "画像が１枚ある" do
        expect(@item).to be_valid
      end
      it "商品名がある" do
        expect(@item).to be_valid
      end
      it "商品説明がある"do
        expect(@item).to be_valid
      end
      it "カテゴリー情報がある" do
        expect(@item).to be_valid
      end
      it "商品状態の情報がある" do
        expect(@item).to be_valid
      end
      it "配送料負担情報がある" do
        expect(@item).to be_valid
      end
      it "発送元の情報がある" do
        expect(@item).to be_valid
      end
      it "発送日数がある" do
        expect(@item).to be_valid
      end
      it "販売価格がある" do
        expect(@item).to be_valid
      end
      it "販売価格が￥300〜￥9,999,999間である" do
        expect(@item).to be_valid
      end
      it "販売価格は半角数字である" do
        expect(@item).to be_valid
      end
    end
    context "ユーザは出品できない" do
      it "画像がない" do
      @item.image = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it "商品名がない" do
        @item.name = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it "商品説明がない" do
        @item.description = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Description can't be blank")
      end
      it "カテゴリがない" do
        @item.category_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
      it "商品状態がない" do
        @item.condition_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Condition can't be blank")
      end
      it "発送負担情報がない" do
        @item.delivery_fee_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery fee can't be blank")
      end
      it "発送元地域がない" do
        @item.area_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Area can't be blank")
      end
      it "発送日数の情報がない" do
        @item.delivery_day_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery day can't be blank")
      end
      it "販売価格の情報がない" do
        @item.price = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it "販売価格￥300〜￥9,999,999の間でない" do
        @item.price = 222
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
      end
      it "販売価格が半角数字でない" do
        @item.price = "１２３４"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price is not a number")
      end
      it "発送元が--ではできない" do
        @item.area_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include("Area must be other than 0")
      end
      it "発送日数が--ではできない" do
        @item.delivery_day_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery day must be other than 0")
      end
      it "カテゴリーが--ではできない" do
        @item.category_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include("Category must be other than 0")
      end
      it "商品状態が--ではできない" do
        @item.condition_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include("Condition must be other than 0")
      end
      it "発送負担情報が--ではできない" do
        @item.delivery_fee_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery fee must be other than 0")
      end
      
    end  
  end
end
