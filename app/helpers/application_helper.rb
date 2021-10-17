module ApplicationHelper
  # ref. http://ltcmdr927.hatenablog.jp/entry/2012/12/09/104903
  def partial_stylesheet_link_tag(controller_name, action_name, enabled = true)
    if enabled
      file_lists = Dir.glob("#{Rails.root.to_s}/app/assets/stylesheets/#{controller_name}/#{action_name}.{css,scss}")
      file_lists.each do |f|
        return stylesheet_link_tag "#{controller_name}/#{action_name}" if File.exist?(f)
      end
      all_file = Dir.glob("#{Rails.root.to_s}/app/assets/stylesheets/#{controller_name}/all.{css,scss}")
      return stylesheet_link_tag "#{controller_name}/#{action_name}" unless all_file.blank?
    end
  end

  def ar_errors(model)
    if model.errors.any?
      concat(
        content_tag(:div, nil, class: 'alert alert-danger alert-dismissable', role: 'alert') do
          concat(
            button_tag(nil, class: 'close', type: 'button', data: { dismiss: 'alert' }) do
              concat content_tag(:span, '&times;'.html_safe, 'data-aria-hidden' => true)
              concat content_tag(:span, 'Close', class: 'sr-only')
            end
          )
          concat content_tag(:h4, "#{pluralize(model.errors.count, 'error')} 登録できませんでした:")
          concat(
            content_tag(:ul) do
              model.errors.full_messages.each do |msg|
                concat content_tag(:li, msg)
              end
            end
          )
        end
      )
    end
  end

  def flash_messages(_opts = {})
    flash.each do |flash_type, message|
      concat(
        content_tag(:div, message, class: "alert alert-dismissable #{bootstrap_class_for(flash_type)} fade in") do
          concat(
            content_tag(:button, class: 'close', data: { dismiss: 'alert' }) do
              concat content_tag(:span, '&times;'.html_safe)
            end
          )
          concat message
        end
      )
    end
  end
end
