module MorriganEditorRails
  class Engine < ::Rails::Engine
    isolate_namespace MorriganEditorRails

    initializer "morrigan_editor_rails.assets.precompile" do |app|
      app.config.assets.precompile += %w(morrigan_editor_rails/iframe.css)
    end
  end
end
