class Allergy < ActiveRecord::Base
  belongs_to :patient

  def response_object
    {
      nombre: nombre,
      fecha_alta: fecha_alta.strftime("%d/%m/%y"),
      medicamento: medicamento,
    }
  end
end
