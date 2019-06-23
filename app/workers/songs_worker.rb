class SongsWorker
  require 'csv'
  include Sidekiq::Worker

  def perform(songs_file)
    binding.pry
    CSV.foreach(songs_file, headers: true) do |song|
      binding.pry
    end
  end
end
