class PagesController < ApplicationController
  def home
    @events = Event.where(privacy: '0').order(date: :asc)
  end
end

