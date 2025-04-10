class Album < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :photo, presence: true

  has_one_attached :photo # 画像１枚の場合。これによりalbum.photoを使えるようになる
end
