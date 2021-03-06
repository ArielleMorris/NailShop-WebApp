# == Schema Information
#
# Table name: promotions
#
#  id               :bigint           not null, primary key
#  discount_flat    :integer
#  discount_percent :decimal(, )
#  promo_code       :string(8)
#  service_type     :string
#  title            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  service_id       :bigint
#
# Indexes
#
#  index_promotions_on_service_id  (service_id)
#
# Foreign Keys
#
#  fk_rails_...  (service_id => services.id)
#
class Promotion < ApplicationRecord

      belongs_to(
        :service,
        class_name: 'Service',
        foreign_key: 'service_id',
        inverse_of: :promotion
      )
    
      validates :promo_code, presence: true
      validates :discount_flat, presence: true
      validates :discount_percent, presence: true
      validates :promo_code, length: { is: 8 }
      validates :promo_code, format: { with: (/\A[a-zA-Z0-9]+\z/) ,
      message: "only allows letters and numbers" }
      
    
      
    end
  
