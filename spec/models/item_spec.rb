require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe 'cosme投稿' do
    context 'cosme投稿できる場合' do
      it '全ての項目が正しく入力されていれば登録できる' do
        expect(@item).to be_valid
      end
    end
    context 'cosme投稿できない場合' do
      it 'ブランドが空では保存できない' do
        @item.brand = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Brand can't be blank")
      end
      it 'カテゴリーが空では保存できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Category must be other than 1")
      end
      it '名前が空では保存できない' do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it 'userが紐付いていないと保存できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('User must exist')
      end
    end
  end
end
