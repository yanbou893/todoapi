class V1::MemosController < ApplicationController
  def index
      memos = Memo.where(task_id: params[:id]).order(created_at: :desc)
      render json: memos
  end
    def show
        memos = Memo.where(task_id: params[:id]).order(created_at: :desc)
        render json: memos
    end

    def create
        memo = Memo.new(memo_params)
      if memo.save
        render json: memo, status: :created
      else
        render json: memo.errors, status: :unprocessable_entity
      end
    end

    def destroy
        memo = Memo.find(params[:id])
        if memo.destroy
            render json: memo
        end
    end

    private
      def memo_params
        params.require(:memo).permit(:task_id,:comment,:todate)
      end
end
