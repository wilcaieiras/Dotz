Quando("faco uma solicitacao GET para o servico films") do
  @response = RequestFilms.new.get_films
end

Entao("o codigo de resposta HTTP deve ser igual {int}") do |response_code|
  expect(@response.code).to eql response_code
end

Entao("terei todos os titulos armazenados") do
  @title_A = @response.parsed_response["results"][0]["title"]
  @title_B = @response.parsed_response["results"][1]["title"]
  @title_C = @response.parsed_response["results"][2]["title"]
  @title_D = @response.parsed_response["results"][3]["title"]
  @title_E = @response.parsed_response["results"][4]["title"]
  @title_F = @response.parsed_response["results"][5]["title"]

  log @title_A, @title_B, @title_C, @title_D, @title_E, @title_F
end
