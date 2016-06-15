json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :user_id, :tecnic_id, :title, :content, :priority, :status
  json.url ticket_url(ticket, format: :json)
end
