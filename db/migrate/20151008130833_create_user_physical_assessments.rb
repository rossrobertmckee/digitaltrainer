class CreateUserPhysicalAssessments < ActiveRecord::Migration
  def change
    create_table :user_physical_assessments do |t|

    	t.integer :user_id
      t.integer :height
      t.integer :weight
      t.integer :age_in_years

      t.integer :body_mass_index
      t.integer	:chest
      t.integer	:waist
      t.integer	:hip
      t.integer	:bicep
      t.integer	:forearm
      t.integer	:thigh
      t.integer	:calf
      t.integer :neck

      t.integer :users_results_assessment
      t.string :image_goal

      t.timestamps null: false
    end
  end
end

