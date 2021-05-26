Quando("faco uma solicitacao GET para o servico planets") do
  @response = RequestPlanets.new.get_planets
end

E("armazeno a quantidade de planetas") do
  @planetas = @response.parsed_response["count"]
end

E("faco uma solicitacao GET para o servico planets com quantidade incorreta") do
  @response = RequestPlanets.new.get_planets_n(
    n_planet = rand(@planetas + 1...999999999999)
  )
end

E("sera exibido a mensagem {string}") do |message|
  expect(@response.parsed_response["detail"]).to eql message
end
