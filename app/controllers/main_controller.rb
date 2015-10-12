class MainController < ApplicationController
  include MainHelper

  def index
    puts "HERE"
    @boris_or_david = david?(DateTime.new) ? "David" : "Boris"
  end
end
