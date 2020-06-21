class PagesController < ApplicationController
  def home
    @events = []
    for j in Event.where(privacy: 0).order(date: :asc)
      @events << j
    end

  end
end

