class Article < ApplicationRecord
  validates :title, :content, presence: true
  validates :title, uniqueness: true
  validates :stars, inclusion: { in: 0..5}
end
