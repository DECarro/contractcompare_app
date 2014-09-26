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

    ActionMailer::Base.mail(:from => 'carro.danielle@gmail.com', :to => 'carro.danielle@gmail.com', :subject => "Contact Message", :body => 'I am the email body.').deliver
    redirect_to "/"
  end

 
end
