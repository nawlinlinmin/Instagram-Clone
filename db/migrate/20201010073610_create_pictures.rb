class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :title
      t.text :content
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
