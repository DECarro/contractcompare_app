class ContactMailer < ActionMailer::Base
  default from: "danielle@backofficeagent.com"

  def contactmessage_email(x)
  	@body = x[:body]
  	@subject = x[:subject]
    
  	mail(:to => 'danielle@backofficeagent.com', :from => x[:from], :subject => x[:subject])

  end


   

end
