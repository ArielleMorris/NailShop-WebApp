# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  customer_role          :boolean          default(TRUE)
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  manager_role           :boolean          default(FALSE)
#  phone_number           :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many(
    :appointments,
    class_name: 'Appointment',
    foreign_key: 'user_id',
    inverse_of: :user
  )

  validates :phone_number, :phone_number => {:ten_digits => true, :message => "Not a valid phone number. It must be ten digits."}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
