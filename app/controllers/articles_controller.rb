class ArticlesController < ApplicationController

  def new
  end  

  def create
    @article = Article.new(article_params)    #отправить данные на сервер
       if @article.valid?
         @article.save
       else
         render action: 'new'
       end 
  end  
  private
   def article_params
      params.require(:article).permit(:title, :text)    #разрешаем только те поля к-е нам нужны
   end 
end
