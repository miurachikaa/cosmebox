class FaceType < ActiveHash::Base
  self.data = [
    { id: 1, name: 'Face type' },
    { id: 2, name: 'キュート' },
    { id: 3, name: 'アクティブキュート' },
    { id: 4, name: 'フェミニン' },
    { id: 5, name: 'フレッシュ' },
    { id: 6, name: 'ソフトエレガント' },
    { id: 7, name: 'エレガント' },
    { id: 8, name: 'クールカジュアル' },
    { id: 9, name: 'クール' }
  ]

  include ActiveHash::Associations
  has_many :users

  end