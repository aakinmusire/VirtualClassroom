Rails.application.routes.draw do
 get "announcements" => "announcements#index"
 get "announcements/new" => "announcements#new"
 post "announcements" => "announcements#create"
 get "announcements/:id" => "announcements#show"
 get "announcements/:id/edit" => "announcements#edit"
 patch "announcements/:id" => "announcements#update"
 delete "announcements/:id" => "announcements#destroy"
 get "links" => "links#index"
 get "links/new" => "links#new"
 post "links" => "links#create"
 get "links/:id" => "links#show"
 get "links/:id/edit" => "links#edit"
 patch "links/:id" => "links#update"
 delete "links/:id" => "links#destroy"
end
