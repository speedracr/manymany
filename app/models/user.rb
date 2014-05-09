class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many	:follows, foreign_key: "owner_id"
  has_many	:followers, class_name: "Follow", foreign_key: "target_id"
end
