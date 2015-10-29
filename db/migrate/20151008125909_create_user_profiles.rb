class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|

    	t.integer :user_id
      t.string :user_name
      t.integer :age
      t.integer :zip_code

      t.timestamps null: false
    end
  end
end
