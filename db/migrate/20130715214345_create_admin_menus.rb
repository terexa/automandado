class CreateAdminMenus < ActiveRecord::Migration
  def change
    create_table :admin_menus do |t|
      t.string :name
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
