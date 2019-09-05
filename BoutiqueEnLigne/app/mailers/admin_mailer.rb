class AdminMailer < ApplicationMailer
	def Order_info(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    
    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: 'Chat.Po.Pete@gmail.com', subject: 'Récapitulatif de commande.') 
  end
end
