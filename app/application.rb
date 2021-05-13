class Application
 def call(env)
    resp = Rack::Response.new

    full_time = Time.now
    time = full_time.hour

    # time = Kernel.rand(1..24)

    if time < 12
        resp.write "Good Morning!"
    else
        resp.write "Good Afternoon!"
    end

    resp.finish
 end
end