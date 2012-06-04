class InstrumentsController < ApplicationController
  def show
    @conversion_rate = Soap.new.convert
  end
end
