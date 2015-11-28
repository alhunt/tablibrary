class CreateTabs < ActiveRecord::Migration
  def change
    create_table :tabs do |t|
      t.string :artist
      t.string :title
      t.text :tab_content

      t.timestamps null: false
    end
  end
end
