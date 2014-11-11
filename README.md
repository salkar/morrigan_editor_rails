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
