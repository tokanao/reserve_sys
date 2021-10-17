module CustomerDecorator
  def name
    "#{last_name} #{first_name}"
  end

  def name_kana
    "#{last_kana} #{first_kana}"
  end
end
