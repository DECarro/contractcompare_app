class PagesController < ApplicationController
  def landing_page
  	@featured_product = Product.find(1)
  	
  end

  def contact

  end

  def about
  end

  def faq
  end

  def contact_input
    
    body = params['message']
    email = params['email']
    first_name = params['fname']
    last_name = params['lname']
    ActionMailer::Base::Contactmailer.contactmessage_email(:from => email, :to => 'danielle@backofficeagent.com', :subject => first_name + " has sent you a message", :body => body).deliver

    redirect_to "/contact"


  end

 
end
