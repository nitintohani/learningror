class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :history
      t.string :company

      t.timestamps null: false
    end
  end
end
