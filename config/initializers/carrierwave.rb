# Be sure to restart your server when you modify this file.

CarrierWave.configure do |config|	
  config.root = Rails.root.join('tmp')
  config.cache_dir = 'carrierwave'

  config.s3_access_key_id = ENV['AKIAJHG7I3JMPXFW6F2A']
  config.s3_secret_access_key = ENV['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']
  config.s3_bucket = ENV['cml-portfolio']
end