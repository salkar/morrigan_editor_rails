module MorriganEditorRails
  module ApplicationHelper
    def iframe_stylesheet
      if ::MorriganEditorRails::Engine::config.respond_to?('iframe_css_file_name')
        ActionController::Base.helpers.asset_path(::MorriganEditorRails::Engine::config.iframe_css_file_name)
      else
        ActionController::Base.helpers.asset_path('morrigan_editor_rails/iframe.css')
      end
    end
  end
end
