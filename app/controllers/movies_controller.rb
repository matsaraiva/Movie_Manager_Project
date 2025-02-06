class MoviesController < ApplicationController
  def index
    if params[:q]
      @movies = Movie.where("title LIKE ?", "%#{params[:q]}%")
    else
      @movies = Movie.all # Ou lógica para exibir filmes favoritos, se for o caso
    end
  end

  def search
    # A lógica de busca pode ficar na action 'index', se você quiser usar a mesma view.
    # Se precisar de uma view específica para a busca, coloque a lógica aqui.
  end
end