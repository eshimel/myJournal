#
class EntriesController < OpenReadController
  before_action :set_entry, only: [:update, :destroy]

  # GET /entries
   def index
    if(current_user)
      @entries = current_user.entries
    else
      @entries = Entry.all
    end
    render json: @clues
  end

  # GET /entries/1
  def show
    def show

    render json: current_user.entry
  end
  end

  # POST /entries
  def create
    @entry = current_user.entries.new(entry_params) #makes this, this user's entry.

    if @entry.save
      render json: @entry, status: :created, location: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # PATCH /entries/1
  def update
    if @entry.update(entry_params)
      head :no_content
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entries/1
  def destroy
    @entry.destroy

    head :no_content
  end

  def set_entry
    @entry = current_user.entries.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:title, :jpost)
  end

  private :set_entry, :entry_params
end


#Users receive clues from the previous user.
  #Users submit clues for the next user.

