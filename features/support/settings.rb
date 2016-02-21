class Settings < Settingslogic
  source "config/service.yml"
  namespace ENV['ENV']
end
