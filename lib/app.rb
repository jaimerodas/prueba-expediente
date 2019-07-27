require "rubygems"
require "bundler"
require "sinatra/activerecord"

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

  if (patient = Patient.find_by(id: id))
    patient.record
  else
    halt(*AppErrors.not_found)
  end
end
