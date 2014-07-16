MorriganEditorRails::Engine.routes.draw do
  resources :editor_images, only: [:create]
end
