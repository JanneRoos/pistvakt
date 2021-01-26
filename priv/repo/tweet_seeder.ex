defmodule Pistvakt.Seeds.TweetSeeder do
  
  alias Pistvakt.Management
  alias Pistvakt.Seeder

  def seed do
    tweets = [
      %{
        tweet_id: 123,
        quote_id: 1
      }
    ]

    Seeder.seed(tweets, &Management.TweetManagement.create_tweet/1)
  end
end
