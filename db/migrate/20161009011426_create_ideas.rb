class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :what
      t.string :usage

      t.timestamps
    end
  end
end
