class Pub::MusicasController < ApplicationController

  layout 'banda_publico'

  def index 
    @musicas = Musica.all.asc(:nome_pra_pesquisa)
  end

end