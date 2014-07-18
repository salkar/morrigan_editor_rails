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

    def self.sanitize_config
      {
          :elements => WHITELIST_ELEMENTS,

          :attributes => {
              'a' => ['href'],
              'p' => ['style'],
              'img' => ['src', 'style'],
              'iframe' => ['width', 'height', 'src', 'frameborder', 'allowfullscreen', 'wmode', 'style'],
              'div' => ['style', 'contenteditable', 'class'],
              'h2' => ['style'],
              'h3' => ['style'],
              'h4' => ['style']
          },

          :css => {
              :properties => ['max-width', 'max-height', 'width', 'height', 'font-size', 'font-weight', 'color', 'font-family', 'text-align']
          },

          :protocols => {
              'a' => {'href' => ['http', 'https', 'mailto', 'ftp']}
          }
      }
    end
  end
end
