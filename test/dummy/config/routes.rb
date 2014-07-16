Rails.application.routes.draw do

  mount MorriganEditorRails::Engine => "/morrigan_editor_rails"

  root to: 'test#index'
end
