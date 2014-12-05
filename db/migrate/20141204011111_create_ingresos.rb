class CreateIngresos < ActiveRecord::Migration
  def change
    create_table :ingresos do |t|
      t.string :nombre
      t.string :documento
      t.string :ficha
      t.references :elemento, index: true
      t.string :prestamo

      t.timestamps
    end
  end
end
