# Root crumb
crumb :root do
  link "Home", root_path
end

# Process list
crumb :proces do
  link "List Process", proces_path
end

# Process

crumb :proce do |proce|
  link proce, proce
  parent :proces
end
