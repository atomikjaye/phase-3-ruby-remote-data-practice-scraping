require 'nokogiri'
require 'open-uri'


doc = Nokogiri::HTML(open("http://flatironschool.com/"))

# p doc.css(".heading-financier").text.strip
courses = doc.css(".card-centered-content .heading-35-semibold")

courses.each do |course|
  puts course.text.strip
end

puts courses[0].attributes