class RemoveImgAfterFromVimCommands < ActiveRecord::Migration[5.0]
  def change
    remove_column :vim_commands, :img_after, :string
  end
end
