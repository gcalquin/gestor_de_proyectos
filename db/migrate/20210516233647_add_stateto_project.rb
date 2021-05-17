class AddStatetoProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :state, :string, default: "propuesta"
  end
end
