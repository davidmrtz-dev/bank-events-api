class WorkNameWorker
  include Sidekiq::Worker

  def perform(*_args)
    puts 'hello world worker'
  end
end
