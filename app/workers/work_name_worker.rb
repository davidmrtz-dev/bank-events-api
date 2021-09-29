class WorkNameWorker
  include Sidekiq::Worker

  def perform(*_args)
    Rails.logger.debug 'hello world worker'
  end
end
