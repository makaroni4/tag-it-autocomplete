#tags source: #http://data.stackexchange.com/stackoverflow/query/3978/most-popular-stackoverflow-tags-in-may-2010
require 'csv'

namespace :tags do  
  task :seed => :environment do
    CSV.open("#{Rails.root}/lib/tasks/tags.csv", 'r').each do |row|
      Tag.find_or_create_by_name row[0]
    end
    
    puts "Tags count : #{Tag.count}"
  end
end