Refinery::Search.configure do |config|
   config.enable_for = ["Refinery::Page",
                        "Refinery::Animals::Animal",
                        "Refinery::Events::Event",
                        "Refinery::Staffs::Staff"]
  # config.page_url = "/search"
  # config.results_per_page = 10
end
