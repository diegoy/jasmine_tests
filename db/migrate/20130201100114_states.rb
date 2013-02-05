class States < ActiveRecord::Migration
  def up
    create_table :states do |t|
      t.string :name
    end
  end

  def down
  end
end
