class CreateMovieItems < ActiveRecord::Migration
  def change
    create_table :movie_items do |t|
      t.string :title
      t.text :plot
      t.integer :imdb_id
      t.references :user, index: true
      t.string :year
      t.string :director
      t.text :actors
      t.string :rated
      t.string :genre
      t.string :runtime
      t.string :rotten_tomatoes

      t.timestamps null: false
    end
  end
end
