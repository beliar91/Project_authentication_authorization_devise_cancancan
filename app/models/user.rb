class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :news, dependent: :destroy

def to_s
  "#{email}"
end

def admin?
  self.admin
end

def regular?
  !self.admin
end

end


