class ArticlesController < ApplicationController




 def show
@article = Article.all
 end


def new
@article = Article.new
end

def create
@article = Article.new(article_params)
@article.save
redirect_to articles_show(@article)

end

private
def article_params
params.require(:article).permit(:title, :description)
end


end
