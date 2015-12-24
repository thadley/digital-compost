class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :url
      t.string :source

      t.timestamps null: false
    end
  end
end
