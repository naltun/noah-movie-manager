class Movie < ActiveRecord::Base
    validates_presence_of :title
    validates_presence_of :format
    validates :length, presence: true, numericality: true
    validates :release_year, presence: true, numericality: true
    validates :rating, presence: true, numericality: true
end
