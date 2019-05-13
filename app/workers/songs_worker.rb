class SongsWorker
    require 'csv'
    include Sidekiq::Worker 

    def perform(leads_file)
        CSV.foreach(file, headers: true) do |item|
            Song.create(title: item[0], artist_name: item[1])
          end
    end
end
