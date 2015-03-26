if defined?(Le) and ENV['LOGENTRIES_TOKEN'].present?
  env = ENV['LOGENTRIES_ENVIRONMENT'].split(',') if ENV['LOGENTRIES_ENVIRONMENT'].present?

  if Rails.env.production?
    Rails.logger = Le.new(ENV['LOGENTRIES_TOKEN']) if !env or env.include?('production')
  else
    Rails.logger = Le.new(ENV['LOGENTRIES_TOKEN'], debug: true) if !env or env.include?('development')
  end
end
