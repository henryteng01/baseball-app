json.extract! employee, :id, :name, :biography, :profile_pic_url, :created_at, :updated_at
json.url employee_url(employee, format: :json)
