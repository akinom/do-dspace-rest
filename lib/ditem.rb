require 'dspace_obj'

class DItem  < DSpaceObj
  PATH = "/items"

  def self.list(params)
    return DSpaceObj.get_list(nil, self, params)
  end

  def self.find_by_id(id)
    return DSpaceObj.get_one(nil, "#{PATH}/#{id}", self)
  end

  def bitstreams(params)
    return list(DBitstream, params)
  end
end

