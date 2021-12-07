class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :id_user
      t.string :title 
      t.string :localization
      t.string :comment

      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
