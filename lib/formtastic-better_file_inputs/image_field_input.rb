class ImageFieldInput < FileFieldInput
  def preview
    template.image_tag(@url, :height => 50)
  end
end

