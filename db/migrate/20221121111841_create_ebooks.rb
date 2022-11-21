class CreateEbooks < ActiveRecord::Migration[7.0]
  def change
    create_table :ebooks do |t|
      t.string 'book_name', null: false
      t.string 'author_name', null: false
      t.text 'description'
      t.string 'publish_year'
      t.integer 'rate'

      t.timestamps
    end
  end
end
