class Resource < ApplicationRecord
  validates :name, presence: true
  validates :category_res, presence: true

  # validates :expire_date

  belongs_to :user
  belongs_to :company,
    optional: true
end
