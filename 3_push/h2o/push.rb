Proc.new do |env|
  push_paths = []
  if /(\/|\.html)\z/.match(env["PATH_INFO"])
    push_paths << "/css/application.css"
    180.times do |i|
      push_paths << "/images/photo#{i + 1}.jpg"
    end
  end
  [399, push_paths.empty? ? {} : {"link" => push_paths.map{|p| "<#{p}>; rel=preload"}.join("\n")}, []]
end
