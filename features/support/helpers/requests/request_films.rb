class RequestFilms
  def get_films
    Http.get("/films")
  end
end
