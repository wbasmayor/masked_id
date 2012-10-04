require 'masked_id/baffler'

def mask_id!
  include MaskedId
  #extend MaskedId::ModelExtensions
end

module MaskedId

  def masked_id
    MaskedId::Baffler.baffle_id(self.id, self.object_id)
  end

  def find_by_masked_id(id)
    self.find(MaskedId::Baffler.debaffle_id(id, self.object_id))
  end
  #module ModelExtensions

  #  def find(id)
  #    super(MaskedId::Baffler.debaffle_id(id, self.object_id))
  #  end

  #end

end
