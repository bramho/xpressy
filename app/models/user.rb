class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_attached_file :avatar, styles: { medium: "300x300>", thumb: "50x50>" }, default_url: ":style/missing.png"
   validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
