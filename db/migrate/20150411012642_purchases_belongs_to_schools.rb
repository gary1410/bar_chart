class PurchasesBelongsToSchools < ActiveRecord::Migration
  def change
  	add_belongs_to("school_purchases", "school")
  end
end
