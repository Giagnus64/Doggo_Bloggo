class Post < ApplicationRecord
    belongs_to :doggo
    has_many :post_categories
    has_many :categories, through: :post_categories

    def categories_attributes=(category_attributes)
        category_attributes.values.each do |category_attribute|
            # Makes sure that the field is not empty
            if !category_attribute.values.include?("")
            category = Category.find_or_create_by(category_attribute)
            self.categories << category
            end
        end
    end
end
