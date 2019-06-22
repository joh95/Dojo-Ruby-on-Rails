module Api
    module V1
        class AlbumController < ApplicationController
            def index
                albums = Album.where(artist_id: params[:artist_id]).order('created_at DESC');
                render json: {status: 'OK', message: 'Albums loaded', data: albums}, status: :OK
            end

            def show
                album = Album.find(params[:id])
                render json: {status: 'OK', message: 'Albums loaded', data: album}, status: :OK                
            end

            def create
                album = Album.new(artist_params)

                if album.save
                    render json: {status: 'OK', message: 'Album created', data: album}, status: :OK
                else
                    render json: {status: 'Error', message: 'Album not created', data: album}, status: :OK
                end
            end

            def destroy
                album = Album.find(params[:id])
                album.destroy
                render json: {status: 'OK', message: 'Album deleted', data: album}, status: :OK
            end     

            private 

            def artist_params
                params.permit(:name)
            end
        end
    end
end