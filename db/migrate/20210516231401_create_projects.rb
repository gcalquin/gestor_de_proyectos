class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.datetime :begin
      t.datetime :end

      t.timestamps
    end
  end
end
