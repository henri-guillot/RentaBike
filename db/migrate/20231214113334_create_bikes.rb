class CreateBikes < ActiveRecord::Migration[7.1]
  def change
    create_table :bikes do |t|
      t.string :type
      t.string :place
      t.string :description
      t.float :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
