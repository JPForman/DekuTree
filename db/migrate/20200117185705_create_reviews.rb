class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column(:title, :string)
      t.column(:author, :string)
      t.column(:content_body, :string)
      t.column(:rating, :integer)
      t.column(:product_id, :integer)

      t.timestamps()
    end
  end
end
