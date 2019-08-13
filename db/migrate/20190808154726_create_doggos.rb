class CreateDoggos < ActiveRecord::Migration[5.2]
  def change
    create_table :doggos do |t|
      t.string :name
      t.string :breed
      t.string :img_url

      t.timestamps
    end
  end
end
