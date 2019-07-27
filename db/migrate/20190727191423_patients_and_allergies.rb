class PatientsAndAllergies < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.date :fecha_ultima_consulta
      t.string :tipo_sangre
    end

    create_table :allergies do |t|
      t.references :patient
      t.string :nombre
      t.date :fecha_alta
      t.string :medicamento
    end
  end
end
