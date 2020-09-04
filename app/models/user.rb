class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  has_many :posts, dependent: :destroy

  has_many :comments, dependent: :destroy


  # has_one_attached :photo

  before_save :downcase_email


  def downcase_email
	self.email = email.downcase
  end

end
