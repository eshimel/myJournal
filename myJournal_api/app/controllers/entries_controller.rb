# entries are provided from the database upon login
#entries change when new stories change
#entries change every ten contributions
class entriesController < ProtectedController
  before_action :set_entry, only: [:update, :destroy]

  # GET entries
  def index
    entries = entry.all

    render json: entries
  end

  # GET entries/1
  def show
    entry = entry.find(params[:id])

    render json: entry
  end

  # POST entries
  def create
    entry = current_user.entries.new.(entry_params) #makes this, this user'sentry.

    if entry.save
      render json: entry, status: :created, location: entry
    else
      render json: entry.errors, status: :unprocessable_entity
    end
  end

  # PATCH entries/1
  def update
    if @entry.update(entry_params)
      head :no_content
    else
      render json: entry.errors, status: :unprocessable_entity
    end
  end

  # DELETE entries/1
  def destroy
    entry.destroy

    head :no_content
  end

  def set_entry
    entry = current_user.entries.find(params[:id])
  end

  def entry_params
    params.require(:theme).permit(:setting, :subject)
  end

  private :set_entry, :entry_params
end

