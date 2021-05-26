class RequestPlanets
  def get_planets
    Http.get("/planets")
  end

  def get_planets_n(n_planet)
    Http.get("/planets/#{n_planet}")
  end
end
