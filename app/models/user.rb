class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :medical_record
  has_many :campaigns, through: :donations
  after_create :send_welcome_email
  after_create :campaign_email
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

  def campaign_email
    UsersCampaign.run
  end
end
