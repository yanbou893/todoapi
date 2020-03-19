class V1::BodiesController < ApplicationController
  def index
      bodies = Body.where(task_id: params[:id]).order(created_at: :desc)
      render json: bodies
  end
    def show
        bodies = Body.where(task_id: params[:id]).order(created_at: :desc)
        render json: bodies
    end

    def create
        body = Body.new(body_params)
      if body.save
        render json: body, status: :created
      else
        render json: body.errors, status: :unprocessable_entity
      end
    end
    def update
      if params[:token]
        body = Body.find_by(params[:id])
        body.parcent = body.parcent + 10
        body.save
      elsif params[:taken]
        body = Body.find_by(params[:id])
        body.parcent = body.parcent - 10
        body.save
      end
      render json: body, status: :updated

    end

    def destroy
        body = Body.find(params[:id])
        if body.destroy
            render json: body
        end
    end

    private
      def body_params
        params.require(:body).permit(:task_id,:title,:parcent,:memo)
      end
end
