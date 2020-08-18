class Drink < ActiveRecord::Base
    has_many :orders
    has_many :users, through: :orders

    def drink_options
    end
end