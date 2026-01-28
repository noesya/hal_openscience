require 'rails'

class HalOpenscience::Railtie < Rails::Railtie

  initializer "hal_openscience" do
    load_locales if defined?(I18n)
  end

  protected

  def load_locales
    files = Dir[File.join(File.dirname(__FILE__), '../../config/locales/*')]
    I18n.load_path.concat(files)
  end
end
