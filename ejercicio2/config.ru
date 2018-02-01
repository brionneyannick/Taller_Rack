require 'rack'
class MiSegundaWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/index'
      [200, { 'Content-Type' => 'text/html; charset=UTF-8'}, ['<h3> Estás en el index!</h3>']]
    elsif env['REQUEST_PATH'] == '/otro'
      [200, { 'Content-Type' => 'text/html; charset=UTF-8'}, ['<h3> Estás en otro landing!</h3>']]
    else
      [200, {'Content-Type'=>'text/html; charset=UTF-8'}, [File.read("404.html")]]
    end

  end
end
run MiSegundaWebApp.new
