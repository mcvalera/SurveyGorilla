class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :user_id
      t.integer :survey_id
      t.integer :option_id
      t.string :response
      t.timestamps
    end
  end
end
