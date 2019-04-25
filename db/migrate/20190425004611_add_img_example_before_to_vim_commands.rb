class AddImgExampleBeforeToVimCommands < ActiveRecord::Migration[5.0]
  def change
    add_column :vim_commands, :img_example_before, :string
  end
end
