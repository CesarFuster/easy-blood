class ErrorsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:error_404, :error_500, :error_422]

  def error_404
    respond_to do |format|
      format.html { render status: 404, layout: false }
      format.any  { render text: "404 Not Found", status: 404 }
    end
  end

  def error_422
   respond_to do |format|
    format.html { render status: 422 }
    format.any  { render text: "422 Unprocessable Entity", layout: false, status: 422 }
  end
end

def error_500
  def error_500
    render file: "#{Rails.root}/public/500.html", layout: false, status: 500
  end
end
end
