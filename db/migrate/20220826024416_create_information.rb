class CreateInformation < ActiveRecord::Migration[7.0]
  def change
    create_table :information do |t|
      t.string :title
      t.string :image
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
