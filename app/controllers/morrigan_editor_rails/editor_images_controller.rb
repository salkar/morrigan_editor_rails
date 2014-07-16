module MorriganEditorRails
  class EditorImagesController < ActionController::Base
    def create
      if params["upload_img"]
        img_url = EditorImage.create(:image => params["upload_img"]).image.url
      else
        img_url = params["upload_url"]       #TODO
      end
      render :text => {:data => img_url}.to_json
    end
  end
end
