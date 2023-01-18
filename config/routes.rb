Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get "/student", to: "students#index"
      get "/student/:name", to: "students#show_by_name"
      get "/student/fullname/:full_name", to: "students#show_by_full_name"
      get "/student/academy/:academy", to: "students#show_by_academy"
      get "/student/club/:club", to: "students#show_by_club"
      get "/student/rarity/:rarity", to: "students#show_by_rarity"
      get "/student/attack_type/:attack_type", to: "students#show_by_attack_type"
      post "/student", to: "students#create"
    end
  end
end