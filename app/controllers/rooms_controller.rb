class RoomsController < ApplicationController
    def show
      @room = Room.friendly.find(params[:id])
      @products = Product.where(room_id: @room.id)
    end

    def new
      @room = Room.new
    end

    def create
      @room = Room.new(room_params)
      @room.save
      if @room.save
        redirect_to products_path
      else
        render :new
      end
    end

    def destroy
    end

    private

    def room_params
      params.require(:room).permit(:name)
    end
  end
