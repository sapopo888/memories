class Album < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :photos, presence: true

  # has_one_attached :photo # 画像１枚の場合。これによりalbum.photoを使えるようになる
  has_many_attached :photos
end
