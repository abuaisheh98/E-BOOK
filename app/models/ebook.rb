class Ebook < ApplicationRecord
  validates :book_name, presence: { message: 'Must be filled' }
  validates :author_name, presence: true

  scope :year, ->{ where(publish_year: Ebook::PUBLISH_YEAR[:year]) }
  scope :book_name, ->{ where(book_name: Ebook::PUBLISH_YEAR[:book_name]) }

  enum :rate, [ :poor, :bad, :normal, :good, :verygood, :excellent]

  PUBLISH_YEAR = {
    year: '1995',
    book_name:'java'
  }
end
