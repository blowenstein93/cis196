class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   validates :account_name, uniqueness: true
   validates_inclusion_of :age, :in => 18...100 , :message => 'Must be between 18 and 100 years old to join... Sorry Grandma!'

end
