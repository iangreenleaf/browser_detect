# lib/browser_detect/railtie.rb
module BrowserDetectHelper
  class Railtie < Rails::Railtie
    config.to_prepare do
      ApplicationController.send(:include, BrowserDetect)
      ActionView::Base.send(:include, BrowserDetect)
    end

  end
end
