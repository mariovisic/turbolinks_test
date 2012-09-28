class PagesController < ApplicationController
  def show
    @id = params[:id]
    @next_id = @id.to_i + 1

    if params[:turbo]
      @link_opts = {}
      @url_opts = {:turbo => true}
    elsif params[:pjax]
      @link_opts = { :"data-no-turbolink" => true, :"data-pjax" => true}
      @url_opts = {:pjax => true}
    else
      @link_opts = { :"data-no-turbolink" => true}
      @url_opts = {}
    end
  end
end
