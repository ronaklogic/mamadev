json.extract! employee, :id, :name, :mobile_no, :address, :city, :created_at, :updated_at
json.url employee_url(employee, format: :json)
