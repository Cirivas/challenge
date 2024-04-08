class MetricsController < ApplicationController
  def create
    @metric = Metric.new(group_params)
    if @metric.save
      render json: @metric
    else
      render json: @metric.errors, status: :unprocessable_entity
    end
  end

  private

  def group_params
    params.require(:metric).permit(:name, :value, :timestamp)
  end
end
