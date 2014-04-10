class StaticPagesController < ApplicationController
  def home
  end

  def golf
  end

  def info
  	
  end

  def course
  	@snippet = fetch_url ("http://www.omahacc.org/Default.aspx?p=DynamicModule&pageid=370553&ssid=283993&vnf=1")
  end
end
