BLOOD_TYPES = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"]
ALLERGIES = [
  {nombre: "Lácteos", medicamento: "leche de soya"},
  {nombre: "Nueces", medicamento: "papitas"},
  {nombre: "Camarones", medicamento: "tocino"},
  {nombre: "Soya", medicamento: "no comer tofu"},
  {nombre: "Trigo", medicamento: "pan de almendra"},
]

100.times do
  p = Patient.create(
    fecha_ultima_consulta: Date.today - rand(3650),
    tipo_sangre: BLOOD_TYPES.sample
  )
  ALLERGIES.sample(rand(1..5)).each do |allergy|
    p.allergies.create(
      allergy.merge(fecha_alta: p.fecha_ultima_consulta - rand(3650))
    )
  end
end
