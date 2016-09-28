class SsController < ApplicationController
    
    def index
        
    end
    
    def new
        @pair = Pair.new
    end
    
    def create
        @pair = Pair.new(user_params)
    
        respond_to do |format|
          if @pair.save
            format.html { redirect_to ss_show_path, notice: 'Pair was successfully created.' }
            format.json { render :show, status: :created, location: @pair }
          else
            format.html { render :new }
            format.json { render json: @pair.errors, status: :unprocessable_entity }
          end
        end
    end
    
    def show
        @pairs = Pair.all
        @json_pairs = {}
        @pairs.each do |p|
            @json_pairs[p.port] = p.password
        end
        
        @json = {'server' => '198.199.101.216','port_password' => @json_pairs,'local_port' => 1080,'timeout' => 600,'method' => 'chacha20'}
    end
    
    def export
        
    end
    
    private
    
        def user_params
          params.require(:pair).permit(:port, :password)
        end
    
end
