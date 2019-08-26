class PropertiesController < ApplicationController
  before_action :set_property, only:[:show, :edit, :update, :destroy]
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times{ @property.stations.build }
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path, notice: "登録しました。"
    else
      render :new, denger: "登録に失敗しました。"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to properties_path, notice: "更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path, notice: "削除しました。"
  end

  private

  def property_params
    params.require(:property).permit(
      :property_name,
      :rent,
      :address,
      :age,
      :note,
        stations_attributes:[
          :id,
          :station_name,
          :rute_name,
          :station,
          :walking_minutes,
          :property_id
        ]
    )
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
