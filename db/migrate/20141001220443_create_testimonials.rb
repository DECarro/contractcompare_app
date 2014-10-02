class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :testimonialname
      t.text :content
      t.string :email_address
      t.references :product, index: true

      t.timestamps
    end
  end
end
