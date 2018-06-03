class Application 
  def call(env) 
    resp = Rack::Response.new
    time = Time.new 
    morning = 11
    if time.hour > 12
      resp.write "Good Afternoon!"
    elsif morning < 12   
      resp.write "Good Morning!"
    end 
    
    resp.finish 
    
  end 
end 