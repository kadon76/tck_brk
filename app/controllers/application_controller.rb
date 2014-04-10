class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  require 'net/http'

  def fetch_url(url)
  	r = URI.parse(url)
  	req = Net::HTTP::Get.new(r.to_s)
  	res = Net::HTTP.start(r.host, r.port) {|http|
  		http.request(req)}
  	res.body
  end
end
