SimpleForm::ErrorNotification.class_eval do
  def render
    if has_errors?
      template.content_tag(:div) do
        template.content_tag(error_notification_tag, error_message, html_options)
      end
    end
  end
end
