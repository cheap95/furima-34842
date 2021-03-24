require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe "ユーザー新規登録" do
    it "ニックネームが存在すれば登録できる" do
      expect(@user).to be_valid
     end
    it "メールアドレスが存在すれば登録できる" do
      expect(@user).to be_valid
     end
    it "メールアドレスが一意性でなければ登録できる" do
      expect(@user).to be_valid
     end
    it "メールアドレスに、@を含が含まれていれば登録できる" do
      expect(@user).to be_valid
     end
    it "パスワードが存在すれば登録できる" do
      expect(@user).to be_valid
     end
    it "パスワードが６文字以上入力されてあれば登録できる" do
      expect(@user).to be_valid
     end
    it "パスワードは、半角英数字混合で存在すれば登録できる" do
      expect(@user).to be_valid
     end
    it "パスワードは、確認用を含めて2回入力すれば登録できる"do
    expect(@user).to be_valid
     end
    it "パスワードとパスワード（確認用）が、値の一致すれば登録できる" do
      expect(@user).to be_valid
     end
    it "ユーザー本名は、名字と名前がそれぞれ存在すれば登録できる" do
      expect(@user).to be_valid
     end
    it "ユーザー本名は、全角（漢字・ひらがな・カタカナ）で存在すれば登録できる" do
      expect(@user).to be_valid
     end
    it " ユーザー本名のフリガナは、名字と名前がそれぞれ存在すれば登録できる" do
      expect(@user).to be_valid
     end
    it "ユーザー本名のフリガナは、全角（カタカナ）で存在すれば登録できる" do
      expect(@user).to be_valid
     end
    it "生年月日が存在すれば登録できる" do
      expect(@user).to be_valid
     end
  end
  context "新規登録ができないとき" do
    it "ニックネームが空では登録できないこと" do
      @user = FactoryBot.build(:user)
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
    it "メールアドレスが空では登録できないこと" do
      @user = FactoryBot.build(:user)
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
      end
    it "メールアドレスが一意性であれば登録できないこと" do
      @user = FactoryBot.build(:user)
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
      end
    it "メールアドレスは、@を含まなければ登録できないこと" do
      @user = FactoryBot.build(:user)
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
      end
    it "パスワードが空では登録できないこと" do
      @user = FactoryBot.build(:user)
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank", "Password には英字と数字の両方を含めて設定してください", "Password confirmation doesn't match Password")
      end
    it "パスワードは、6文字以上でなければ登録できないこと" do
      @user = FactoryBot.build(:user)
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank", "Password には英字と数字の両方を含めて設定してください", "Password confirmation doesn't match Password")
      end
    it "パスワードは、半角英数字混合でなければ登録できないこと" do
      @user = FactoryBot.build(:user)
      @user.password
      @user.valid?
      end
    it "パスワードは、確認用を含めて2回入力しなければ登録できないこと" do
      @user = FactoryBot.build(:user)
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
    it "パスワードとパスワード（確認用）は、値の一致しなければ登録できないこと" do
      @user = FactoryBot.build(:user)
      @user.password && @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
    it "ユーザー本名は、名字と名前がそれぞれ空では登録できないこと" do
      @user = FactoryBot.build(:user)
      @user.first_family_name = ""
      @user.last_family_name = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("First family name can't be blank", "First family name is invalid", "Last family name can't be blank", "Last family name is invalid")
      end
    it "ユーザー本名は、全角（漢字・ひらがな・カタカナ）が空では登録できないこと" do
      @user = FactoryBot.build(:user)
      @user.first_family_name = ""
      @user.last_family_name = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("First family name can't be blank", "First family name is invalid", "Last family name can't be blank", "Last family name is invalid")
      end
    it "ユーザー本名のフリガナは、名字と名前がそれぞれ空では登録できないこと" do
      @user = FactoryBot.build(:user)
      @user.first_family_name_kana = ""
      @user.last_family_name_kana = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("First family name kana can't be blank", "First family name kana is invalid", "Last family name kana can't be blank", "Last family name kana is invalid")
      end
    it "ユーザー本名のフリガナは、全角（カタカナ）でなければ登録できないこと" do
      @user = FactoryBot.build(:user)
      @user.first_family_name_kana = ""
      @user.last_family_name_kana = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("First family name kana can't be blank", "First family name kana is invalid", "Last family name kana can't be blank", "Last family name kana is invalid")
      end
    it "誕生日が空では登録できないこと" do
      @user = FactoryBot.build(:user)
      @user.birthday = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthday can't be blank")
      end
     
  end
end

