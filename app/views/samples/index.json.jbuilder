json.array!(@samples) do |sample|
  json.extract! sample, :id, :soss, :nmbrofdefsmplneeded, :dafissued, :sampleduedate, :xmill, :received, :approved
  json.url sample_url(sample, format: :json)
end
