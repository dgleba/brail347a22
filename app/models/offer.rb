class Offer < ApplicationRecord
    # offers.rb
    has_and_belongs_to_many :users, join_table: :users_offers
end
