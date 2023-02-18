class PersonalColor < ActiveHash::Base
  self.data = [
    { id: 1, name: 'Personal color' },
    { id: 2, name: 'イエローベース' },
    { id: 3, name: 'ブルーベース' }
  ]

  include ActiveHash::Associations
  has_many :users

  end