class Alfabet < ApplicationRecord
validates :name, length: {is: 5}, allow_blank: false, format: { with: /\A[a-zA-Z]+\z/, message: 'plese corect data' }
end
