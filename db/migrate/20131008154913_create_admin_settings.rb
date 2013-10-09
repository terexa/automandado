class CreateAdminSettings < ActiveRecord::Migration
  def change
    create_table :admin_settings do |t|
	  t.string :option_name, :null => false, :default => ""
	  t.string :option_value, :null => true, :default => ""

      t.timestamps
    end
  end
end
