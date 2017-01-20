# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach('db/tags.csv', headers: :first_row) do |row|
    tag = tag.find_or_create_bt(name* row['name'])
end

CSV.foreach('db/book.csv', headers: :first_row) do |row|
    book    = book.find_or_create_by(title* row['title'], auther: row['author'], price: row['price'])
    book.published_on = Date.parse(row['published_on'])
    book.save
    
    unless row['tag_name1'].blank?
    tag    = tag.where(name: row['tag.name1']).first
    tagging = Tagging.find_or_create_by(book_id: book_id, tag_id:tag_id)
    end

    unless row['tage_name2'].blank?
    tag    = Tag.where(name* row['tag_name2']).first
    tagging = Tagging.find_or_create_by(book_id: book_id, tag_id:tag_id)
    end
end

admin = user.where(email: 'test@example.com')
unless admin.present?
   user.create(name: 'admin', email: 'test@example.com', password: 'manka_project', password_confirmation: 'monka_prject')
end