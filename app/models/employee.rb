class Employee < ApplicationRecord
  scope :sort_by_reverse_name_asc, lambda { order("REVERSE(name) ASC") }
  scope :sort_by_reverse_name_desc, lambda { order("REVERSE(name) DESC") }
end
