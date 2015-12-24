class Article < ActiveRecord::Base
    
    def twitter_url(url)
        "https://twitter.com" + url
    end

    # To embed the Tweet at 
    # https://twitter.com/Interior/status/507185938620219395
    # use:
    # https%3A%2F%2Ftwitter.com%Interior%2Fstatus%2F507185938620219395

    def tweet
        "<blockquote class='twitter-tweet' lang='en'><p lang='en' dir='ltr'>" + tweet_text + 
        "</p>&mdash;" + twitter_user + "<a href='" + twitter_url + "'>" + tweet_date + 
        "</a></blockquote><script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script>"
    end
end
