class PostsController < ApplicationController
  before_action :fetch_post, only: %i[ show edit update destroy]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    return redirect_to @post, notice: 'Objeto salvo' if @post.save

    render :new, alert: 'oops, algo de errado'
  end

  def show; end

  def edit; end

  def update

    msg = 'Objeto Atualizado'
    return redirect_to @post, notice: msg if @post.update(post_params)

    render :new, alert: 'oops, algo de errado'
  end

  def destroy
    msg = 'Artigo apagado com sucesso'
    redirect_to posts_path, notice: msg if @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end

  def fetch_post
    @post = Post.find(params[:id])
  end
end
