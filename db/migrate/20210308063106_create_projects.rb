class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :student, foreign_key: true
      t.string :project_title
      t.string :technology
      t.string :description

      t.timestamps
    end
  end
end
