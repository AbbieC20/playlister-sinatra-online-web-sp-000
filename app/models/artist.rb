require_relative './concerns/slugifiable'

class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  include Slugifiable
  extend Findable
end
