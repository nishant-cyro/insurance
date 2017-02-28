class Proposal < ApplicationRecord
  belongs_to :product
  belongs_to :quote
  belongs_to :insurer
end
