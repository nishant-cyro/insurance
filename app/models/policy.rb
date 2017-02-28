class Policy < ApplicationRecord
  belongs_to :payment
  belongs_to :quote
  belongs_to :user
end
