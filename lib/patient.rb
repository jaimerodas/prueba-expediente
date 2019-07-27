class Patient
  def self.find(id)
    new(id)
  end

  def initialize(id)
    @id = id.to_i
  end

  attr_reader :id

  def exists?
    true
  end

  def record
    [
      200,
      {"Content-Type" => "application/json"},
      {
        codigo: 200,
        mensaje: "Petición completada.",
        payload: response_object,
      }.to_json,
    ]
  end

  def response_object
    {
      no_expediente: id,
      fecha_ultima_consulta: "31/12/19",
      tipo_sangre: "A+",
      alergias: [
        {nombre: "algo", fecha_alta: "31/12/19", medicamento: "algo"},
      ],
    }
  end
end
