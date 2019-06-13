class TweetsApp

    def call
        puts 'Welcome to our app, homie'

        puts 'enter a username:'
        username = gets.chomp

        puts 'enter a message:'
        message = gets.chomp

        tweet = Tweet.new(message, username)

        tweet.save
        
        tweets = Tweet.all
        render(Tweets)
    end

end