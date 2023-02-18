class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'Foundation' },
    { id: 3, name: 'Concealer' },
    { id: 4, name: 'Powder' },
    { id: 5, name: 'Eyebrow' },
    { id: 6, name: 'Eyeliner' },
    { id: 7, name: 'Eyeshadow' },
    { id: 8, name: 'Mascara' },
    { id: 9, name: 'Lip' },
    { id: 10, name: 'Cheek' }
  ]

  include ActiveHash::Associations
  has_many :items

  end