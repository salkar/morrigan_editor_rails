module MorriganEditorRails
  class EditorImage < ActiveRecord::Base
    mount_uploader :image, MorriganEditorImageUploader
  end
end
