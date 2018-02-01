class ItemsController < ProtectedController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  def index
    @items = current_user.items.all

    render json: @items
  end

  # GET /items/1
  def show
    render json: Item.find(params[:id])
  end

  # POST /items
  def create
    @items = current_user.items.build(item_params)

    if @items.save
      render json: @items, status: :created
    else
      render json: @items.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = current_user.items.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:content, :archived, :list_id)
    end
end
