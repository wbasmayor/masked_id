module MaskedId
 
 module ModelExtensions

    def find_by_masked_id(id)
      self.find(MaskedId::Baffler.debaffle_id(id, self.name.to_i(36)))
    end

  end

end
