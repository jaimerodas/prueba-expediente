class Patient < ActiveRecord::Base
  has_many :allergies

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
      fecha_ultima_consulta: fecha_ultima_consulta.strftime("%d/%m/%y"),
      tipo_sangre: tipo_sangre,
      alergias: allergies.map(&:response_object),
    }
  end
end
