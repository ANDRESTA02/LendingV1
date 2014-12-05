class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.string :roll

      t.timestamps
    end
  end
end
