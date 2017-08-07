class UserTagsController < ApplicationController

  def show
    @snippets = UserTag.find(params[:id]).snippets.all
  end

end