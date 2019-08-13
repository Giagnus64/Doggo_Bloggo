class DoggosController < ApplicationController
    before_action :find_doggo, only: [:show, :edit, :update, :destroy]

    def index 
    @doggos = Doggo.all
    end
    
    def new
    @doggo = Doggo.new
    end

    def create 
        @doggo = Doggo.create(doggo_params)
        if @doggo.valid?
            redirect_to(@doggo)
        else 
            @errors = @doggo.errors 
            render :new
        end
    end

    def show
    
    end

    def edit
    
    end

    def update
        @doggo.update(doggo_params)
        if @doggo.valid?
            redirect_to(@doggo)
        else 
            @errors = @doggo.errors 
            find_doggo
            render :edit
        end
    end
    
    def destroy
        @doggo.destroy
        redirect_to(doggos_path)
    end

    private 
    def doggo_params
        permitted = params.require(:doggo).permit(:name, :breed, :img_url)
    end

    def find_doggo
        @doggo = Doggo.find(params[:id])
    end
end
