class Pai < ActiveRecord::Base
	validates :nombre, presence: {:message => "Es un campo obligatorio"}
	validates :codigo, presence: {:message => "Es un campo obligatorio"}
	validates :codigo, length: {maximum: 2, :message => "El serial debe tener maximo 2 caracteres"}

  has_many :thermostats 

end

