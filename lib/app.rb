require "rubygems"
require "bundler"

require_relative "prueba-expediente"

Bundler.require

# This is just so you see something when going to the root location
get "/" do
  "Hola! Aquí no es"
end

# Main part of the app
get "/demo/v1/accounts/:id/record" do |id|
  unless AppUtils.has_correct_format?(id)
    halt(*AppErrors.incorrect_format)
  end

  patient = Patient.find(id)

  if patient.exists?
    patient.record
  else
    halt(*AppErrors.not_found)
  end
end
