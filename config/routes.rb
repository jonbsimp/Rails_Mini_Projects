Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/games" => "main#games"
  root to: "main#games"

  get "/hi_lo" => "hi_lo#hi_lo"
  get "/hi_lo" => "hi_lo#delete_cookies"
  get "/magic" => "magic#magic"

  get "/madlibs" => "madlibs#madlibs"
end
