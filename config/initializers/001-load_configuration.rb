config_dir = File.join(File.dirname(__FILE__), "..", "app_config")
CONFIG     = Profigure.load config_dir, Rails.env
