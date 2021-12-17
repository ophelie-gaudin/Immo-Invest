class Contact < ApplicationRecord
 after_create :welcome_send
     def welcome_send
         ContactMailer.contact_email(self).deliver_now
     end

end
