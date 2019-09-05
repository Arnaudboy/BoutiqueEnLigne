class AdminMailer < ApplicationMailer
	
	def Order_info(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    
    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
	 mail(
        to: user.email,
      delivery_method_options: { api_key: '196f655630dbcbf73d96b218afd265b9y', secret_key: '50c582735c9b9921b93eeadd562bcaca' }
    )   end
end
