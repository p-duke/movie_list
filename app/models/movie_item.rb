class MovieItem < ActiveRecord::Base
  belongs_to :user

  validates :title, :plot, :user_id, :year, :director, :actors, :rated, :genre, presence: true
end
