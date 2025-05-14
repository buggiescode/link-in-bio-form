Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", { :controller => "backdoor", :action => "form" })

  post("/process_addition", { :controller => "backdoor", :action => "create_item"})
end
