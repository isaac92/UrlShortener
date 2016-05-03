class CreateMyurls < ActiveRecord::Migration
  def change
    create_table :myurls do |t|
      t.string :name
      t.string :togo

      t.timestamps null: false
    end
  end
end
