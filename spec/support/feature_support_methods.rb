def login
  visit root_path
  fill_in "Email", with: "user@example.com"
  fill_in "Password", with: "password"
  click_on "Login"
end

def select_date_and_time(date, options = {})
  field = options[:from]
  select date.strftime('%Y'), :from => "#{field}_1i" #year
  select date.strftime('%B'), :from => "#{field}_2i" #month
  select date.strftime('%-d'), :from => "#{field}_3i" #day
  select '12 PM', :from => "#{field}_4i" #hour
  select '45', :from => "#{field}_5i" #minute
end