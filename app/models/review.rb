# == Schema Information
#
# Table name: reviews
#
#  id             :bigint           not null, primary key
#  rating_num     :integer
#  ratings_desc   :text
#  service_code   :integer
#  service_name   :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  appointment_id :bigint
#
# Indexes
#
#  index_reviews_on_appointment_id  (appointment_id)
#
# Foreign Keys
#
#  fk_rails_...  (appointment_id => appointments.id)
#
class Review < ApplicationRecord

    belongs_to(
        :appointment,
        class_name: 'Appointment',
        foreign_key: 'appointment_id',
        inverse_of: :review,
        optional: true
    )

    validates :rating_num, inclusion: { in: 1..5}
    validates :ratings_desc, presence: true
    validates :service_code,  presence: true
    validates :service_code, length: { is: 8 , message: "only allows numbers and 8 characters"}
    validates :service_name,  presence: true
    validates :service_name,  inclusion: {in: %w(manicure pedicure Manicure Pedicure), message: "accepts manicure/pedicure"}

end
