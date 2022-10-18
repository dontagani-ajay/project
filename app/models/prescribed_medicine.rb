class PrescribedMedicine < ApplicationRecord
    belongs_to :Medicine
    belongs_to :Prescription

    validates :dosage, presence: true
    validates :quantity, presence: true
end
