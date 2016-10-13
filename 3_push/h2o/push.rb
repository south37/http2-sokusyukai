Proc.new do |env|
  push_paths = []
  if /(\/|\.html)\z/.match(env["PATH_INFO"])
    push_paths << "/css/application.css"
  end
  [399, push_paths.empty? ? {} : {"link" => push_paths.map{|p| "<#{p}>; rel=preload"}.join("\n")}, []]
end
