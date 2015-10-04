
module DSpace
  module Rest

    class DBitstream < DSpaceObj
      PATH = "/bitstreams"
      EXPAND = ["parent", "policies"];
      EXPAND_TO_ARRAY = ["policies"];

      def self.list(params)
        return DSpaceObj.get_list(nil, self, params)
      end

      def self.find_by_id(id, expand = [])
        return DSpaceObj.get_one(nil, "#{PATH}/#{id}", self, expand)
      end

    end

  end
end
