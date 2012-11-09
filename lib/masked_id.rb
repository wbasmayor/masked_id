require_relative 'masked_id/baffler'

def mask_id
  include MaskedId
  extend MaskedId::ModelExtensions
end

module MaskedId

  def masked_id
    MaskedId::Baffler.baffle_id(self.id, self.class.spin)
  end
    
  module ModelExtensions

    def find_by_masked_id(id)
      self.find(MaskedId::Baffler.debaffle_id(id, spin))
    end

  end

end