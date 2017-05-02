DICTIONARY = {
  'to' => '2',
  'too' => '2',
  'be' => 'b',
  'at' => '@',
  'you' => 'u',
  'for' => '4',
  'and' => '&'
}

def word_substituter(phrase)
  phrase.split(' ').map do |word|
    if DICTIONARY[word.downcase] != nil
      DICTIONARY[word.downcase]
    else
      word
    end
  end.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  if shortened_tweet.length > 140
    shortened_tweet.split('').slice(0,140).join('')
  else
    shortened_tweet
  end
end
