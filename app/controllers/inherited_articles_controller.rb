class InheritedArticlesController < ApplicationController
  before_action :set_inherited_article, only: %i[ show edit update destroy ]

  # GET /inherited_articles
  def index
    @inherited_articles = InheritedArticle.all
  end

  # GET /inherited_articles/1
  def show
  end

  # GET /inherited_articles/new
  def new
    @inherited_article = InheritedArticle.new
  end

  # GET /inherited_articles/1/edit
  def edit
  end

  # POST /inherited_articles
  def create
    @inherited_article = InheritedArticle.new(inherited_article_params)

    if @inherited_article.save
      redirect_to @inherited_article, notice: "inherited_article was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inherited_articles/1
  def update
    if @inherited_article.update(inherited_article_params)
      redirect_to @inherited_article, notice: "inherited_article was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /inherited_articles/1
  def destroy
    @inherited_article.destroy
    redirect_to inherited_articles_url, notice: "inherited_article was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inherited_article
      @inherited_article = InheritedArticle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inherited_article_params
      params.require(:inherited_article).permit(:title, :body, :image)
    end
end
