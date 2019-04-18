class RenameImgBeforeToImgExampleInVimCommands < ActiveRecord::Migration[5.0]

  def change
		rename_column :vim_commands, :img_before, :img_example
  end

end
