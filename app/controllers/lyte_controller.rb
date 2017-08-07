class LyteController < ApplicationController

  def index
    @snippets = Snippet.all.limit(100).each
  end

end
