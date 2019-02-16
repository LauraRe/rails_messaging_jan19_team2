class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, length: { maximum: 10 }
  validates :name, presence: true
  validates_uniqueness_of :name

  validates :password, length: { minimum: 8 }
  validates :password, presence: true

  acts_as_messageable

  def mailboxer_name
    name
  end

  def mailboxer_email(object)
    email
  end
end
