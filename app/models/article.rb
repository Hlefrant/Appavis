class Article < ApplicationRecord
  validates :title, :content, presence: true
  validates :title, uniqueness: true
  validates :stars, inclusion: { in: 0..5}
  belongs_to :user
  validates :user_id, presence: true
end
