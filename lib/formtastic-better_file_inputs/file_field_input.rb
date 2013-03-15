require 'delegate'

class FileFieldInput < Formtastic::Inputs::FileInput
  def file_field
    builder.file_field(method, input_html_options)
  end

  def remove_checkbox
    template.content_tag(:label) do
      builder.check_box("remove_#{method}") << localized_string(method, " Remove", :"remove_#{method}")
    end
  end

  def preview
    ''
  end

  def url_display
    template.content_tag(:div, @url) << template.content_tag(:br)
  end

  def existing_file_info
    result = ''

    if source = builder.object.send(method)
      if source.respond_to?(:url) and @url = source.url
        result = preview << remove_checkbox << url_display
      end
    end

    result
  end

  def div_wrapper
    template.content_tag(:div, :style => 'margin-left: 20%') do
      file_field << existing_file_info.html_safe
    end.html_safe
  end

  def to_html
    input_wrapping do
      label_html << div_wrapper
    end
  end
end

