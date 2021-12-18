class ContactMailer < ApplicationMailer
    default from: 'thpicebreakers@outlook.com'
 
    def contact_email(contact)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @contact = contact
      
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'https://immotep.herokuapp.com/' 
  
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to:'thpicebreakers@outlook.com', subject: 'Contact utilisateur !') 
    end
end
