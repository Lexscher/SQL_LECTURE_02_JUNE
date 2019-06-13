class Tweet
    attr_accessor :message, :username
    attr_reader :id

    def initialize(message, username, id)
        @message = message
        @username = username
        @id = id
    end

    def save
        sql = <<-SQL
            INSERT INTO tweets (message, username) 
            VALUES ("#{self.message}", "#{self.username}");
        SQL

        DB[:conn].execute(sql)
    end

    def create(message, username)
        tweet = Tweet.new(message, username)
        tweet.save
    end

    def self.all
        sql = <<-SQL
        SELECT * FROM tweets;
        SQL
        
        tweet_hashes = DB[:conn].execute(sql)
        tweet_hashes.map { |tweet_hash| Tweet.new(tweet_hash[message], tweet_hash[username], tweet_hash[id]) }
    end
end