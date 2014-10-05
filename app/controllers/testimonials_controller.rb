class TestimonialsController < ApplicationController

	def create
		@product = Product.find(params[:product_id])
		@testimonial = @product.testimonials.create(testa_params)
		redirect_to product_path(@product)

	end


	def destroy
		@product = Product.find(params[:product_id])
		@testimonial = @product.testimonials.find(params[:id])
		@testimonial.destroy
		redirect_to product_path(@product)
	end


	private
	def testa_params
		params.require(:testimonial).permit(:testimonialname, :content, :email_address)
	end
end
