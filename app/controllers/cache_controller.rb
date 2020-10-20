class CacheController < ApplicationController

    def get
        cache_value = Rails.cache.read 'cache_key'
        format.json { render json: { cache_value: cache_value } }
    end

    def set
        cache_value = 'cache_value'
        Rails.cache.write 'cache_key', 'cache_value'
        format.json { render json: { cache_value: cache_value } }
    end
end
