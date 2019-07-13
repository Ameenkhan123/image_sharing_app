class WelcomeController < ApplicationController
  # GET /admin/welcomes
  def index
    @albums = Album.all.order(created_at: :desc)
  end
end
