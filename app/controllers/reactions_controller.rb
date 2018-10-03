class ReactionsController < ApplicationController
  def create
    #find_or_initialize_byメソッドは、引数で与えられた要素を使って検索を行う。見つかればインスタンスを返し、見つからない場合は新しくインスタンスを作る
    reaction = Reaction.find_or_initialize_by(to_user_id: params[:user_id], from_user_id: current_user.id)
    reaction.update_attributes(
      status: params[:reaction]
    )
  end
end
