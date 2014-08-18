require "morrigan_editor_rails/engine"
require "jquery-rails"
require 'jquery-ui-rails'
require 'font-awesome-rails'
require 'carrierwave'
require 'sanitize'

module MorriganEditorRails
  class Editor
    WHITELIST_CLASSES = ['mrge-content-block', 'mrge-left-side', 'mrge-content-block-item']
    WHITELIST_ELEMENTS = ['a', 'p', 'h2', 'h3', 'h4', 'strong', 'em', 'strike', 'img', 'iframe', 'ol', 'ul', 'li', 'div']
    def self.sanitize(html)
      Sanitize.fragment html, self.sanitize_config
    end

    def self.preview_sanitize(html)
      Sanitize.fragment html, self.preview_sanitize_config
    end

    def self.sanitize_config
      relaxed_conf = Sanitize::Config::RELAXED
      relaxed_conf.merge({
          elements: (WHITELIST_ELEMENTS + relaxed_conf[:elements]).uniq,

          attributes: relaxed_conf[:attributes].merge(
            'iframe' => ['width', 'height', 'src', 'frameborder', 'allowfullscreen', 'wmode', 'style'],
            'div' => ['contenteditable', 'class']
          ),

          protocols: relaxed_conf[:protocols].merge(
            'a' => {'href' => ['http', 'https', 'mailto', 'ftp']}
          )
      })
    end

    def self.preview_sanitize_config
      { }
    end
  end
end
