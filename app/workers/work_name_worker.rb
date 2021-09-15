class WorkNameWorker
  include Sidekiq::Worker

  def perform(*args)
    puts 'hello world worker'
  end
end
