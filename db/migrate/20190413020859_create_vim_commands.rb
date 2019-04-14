class CreateVimCommands < ActiveRecord::Migration[5.0]
  def change
    create_table :vim_commands do |t|
      t.string :description
      t.string :img_before
      t.string :img_after
      t.string :command
      t.string :example

      t.timestamps
    end
  end
end
