class Customer < ApplicationRecord
  CREATE_ATTRIBUTE = [:name, :email, :message, :company]

  validates :name, :email, :message, :company, presence: true
end
