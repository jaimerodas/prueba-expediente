class AppErrors
  def self.incorrect_format
    process(400, "El id está en un formato inválido.")
  end

  def self.not_found
    process(404, "No se pudo localizar ese paciente.")
  end

  def self.process(code, message)
    [
      code,
      {"Content-Type" => "application/json"},
      {
        codigo: code,
        mensaje: message,
      }.to_json,
    ]
  end
end
