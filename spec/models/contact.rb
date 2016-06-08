class Contact < ActiveRecord::Base
  validates :email, presents: true
  validates :message, presents: true
end  