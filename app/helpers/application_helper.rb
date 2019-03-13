module ApplicationHelper

  def get_twitter_card_info()
    twitter_card = {}
    twitter_card[:url] = 'https://linch.link'
    if @article.present?
      twitter_card[:title] = "#{@article.title.gsub(" ", "")}"
      twitter_card[:description] = "#{@article.title.gsub(" ", "")}"
    else
      twitter_card[:title] = 'Linch（リンク） '
      twitter_card[:description] = '助け合って検索しよう！'
    end
    twitter_card[:image] = 'https://i.gyazo.com/c58031232aa0cbe49d4776262201bc4a.png'
    twitter_card[:card] = 'summary'
    twitter_card
  end
  
end
