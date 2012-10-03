module MaskedId

  class Baffler
  
    def self.baffle_id(original_id, baffler_id)
      original_id * baffler_id
    end

    def self.debaffle_id(baffled_id, baffler_id)
      baffled_id / baffler_id
    end

    def debaffle_param(symbol)
      params[symbol] = debaffle_id(symbol).to_s if params[symbol]
    end

  end

end
