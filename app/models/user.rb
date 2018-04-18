class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :medical_record
  has_many :donations
  has_many :campaigns, through: :donations
  after_create :send_welcome_email #callback de email de cadastro
  after_create :campaign_email #callback de email de campanha
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :blood_type, presence: true

  private

  def send_welcome_email
    UserMailer.welcome(self.id).deliver_later # action de mandar o email de cadastro
  end

  def campaign_email
    cpoint = Cpoint.near(self.address, CampaignCreator::CAMPAIGN_RANGE).first
    CampaignCreator.perform(cpoint, 1)
    CampaignMailer.new_campaign(self.id) #action de verificar criar campanha e mailing de campanha
  end
end
