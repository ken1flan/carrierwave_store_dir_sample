class Form::Article < ::Article
  def self.carrierwave_store_id
    'article'
  end
end
