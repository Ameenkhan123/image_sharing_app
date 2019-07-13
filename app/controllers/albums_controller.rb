class AlbumsController < ApplicationController
	# GET /admin/albums
	def index
		@albums = Album.all
	end

	# GET /admin/albums/new
	def new
		@album = Album.new
		@album.images.build
	end

	# POST /admin/albums
	def create
		@album = current_user.albums.new(album_params)
		if @album.save
			params[:images_attributes]['photo'].each do |a|
				@image = @album.images.new(photo: a, album_id:  @album.id, user_id: @album.user.id)
				if @image.valid?
					@image.save
				else
					flash[:error] = @image.errors.full_messages
				end
			end
			flash[:success] = "Album was successfully created."
			redirect_to root_path
		else
			flash[:error] = @album.errors.full_messages
			render "new"
		end
	end

	# PATCH /admin/albums/:id
	def destroy
		@album = Album.find(params[:id])
		@album.delete
		flash[:success] = "Album was successfully destroyed."
		redirect_to root_path
	end

	# GET /admin/albums/:id
	def show
		@album = Album.find(params[:id])
	end

	private
	def album_params
		params.require(:album).permit(:name, :user_id,
			images_attributes: [:photo,
				:user_id, :album_id])
	end
end
