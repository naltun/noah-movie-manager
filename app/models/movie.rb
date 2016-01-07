class Movie < ActiveRecord::Base
    validates_presence_of :title, length: { minimum: 1, maximum: 50 }
    validates_presence_of :format, length: { minimum: 1, maximum: 499 }
    validates :length, presence: true, numericality: true
    validates :release_year, presence: true, numericality: true, length: { in: 1800..2100 }
    validates :rating, presence: true, numericality: true
end
