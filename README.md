# Morrigan Editor for Ruby on Rails

## Installation
1. Add it to your `Gemfile`:

  ```ruby
  gem 'morrigan_editor_rails'
  ```
2. Add to `routes.rb`:

  ```ruby
  mount MorriganEditorRails::Engine => "/morrigan_editor_rails" 
  ```
3. Create table for editor's uploaded images:

  ```bash
  rake morrigan_editor_rails:install:migrations
  rake db:migrate
  ```
4. Add to `application.js`:
  
  ```ruby
  //= require 'morrigan_editor_rails/application' 
  ```
5. Add to 'application.css':

  ```ruby
  *= require 'morrigan_editor_rails/application.css'
  ```
  
## Usage
Add to your HTML:
```html
<div morrigan-editor="true" id="editor" editor-width="100%" editor-height="300px" editor-bound-textarea="#textarea"></div>
```
where `editor-bound-textarea` attribute is contains of selector of bound textarea (generated in editor html code will be passed in this textarea before form submit).

## Custom stylesheet
To add custom stylesheet to editor:

1. Add initializer `morrigan_editor.rb` with next code:

  ```ruby
  module MorriganEditorRails
    class Engine < Rails::Engine
      config.iframe_css_file_name = 'your_file_name.css'
    end
  end
  ```
2. Add initializer `assets.rb` with next code (or add next code to this file if it is exists):

  ```ruby
  Rails.application.config.assets.precompile += %w( your_file_name.css )
  ```
  
## Custom uploader
You can use your uploader by put it in initializers with `MorriganEditorImageUploader` class name:

```ruby
class MorriganEditorImageUploader < CarrierWave::Uploader::Base
  # your code here
end
```

## License
© 2014 Sergey Sokolov. It is free software, and may be redistributed under the terms specified in the MIT-LICENSE file.
