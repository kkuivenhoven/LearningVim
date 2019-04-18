class RemoveExampleFromVimCommands < ActiveRecord::Migration[5.0]
  def change
    remove_column :vim_commands, :example, :string
  end
end
