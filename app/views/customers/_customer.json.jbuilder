json.extract! customer, :id, :id, :last_name, :first_name, :last_kana, :first_kana, :gender, :birth, :zip1, :zip2, :addr1, :addr2, :addr3, :tel1, :tel2, :tel3, :email, :note, :deleted_at, :created_at, :updated_at, :created_at, :updated_at
json.url customer_url(customer, format: :json)
