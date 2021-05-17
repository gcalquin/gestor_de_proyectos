class Project < ApplicationRecord

    validates :name, presence:true
    validates :description, presence:true
    validates :state, presence:true

    scope :propuesta, -> { where("state = ?", "propuesta")}
    scope :enprogreso, -> { where("state = ?", "en progreso")}
    scope :terminado, -> { where("state = ?", "terminado")}

end
