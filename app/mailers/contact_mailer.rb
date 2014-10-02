class ContactMailer < ActionMailer::Base
  default from: "danielle@backofficeagent.com"

  def contactmessage_email(x)
  	@x = x
    
  	mail(:to => 'danielle@backofficeagent.com')

  end


   

end
