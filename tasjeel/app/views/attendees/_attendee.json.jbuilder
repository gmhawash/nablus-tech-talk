json.extract! attendee, :id, :name, :date_of_birth, :identification, :address, :created_at, :updated_at
json.url attendee_url(attendee, format: :json)