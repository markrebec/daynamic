module Daynamic
  module Matchers
    class Base
      class << self
        def dump(obj)
          obj.as_json
        end

        def load(json)
          json = JSON.parse(json) if json.is_a?(String)

          json.map do |k,v|
            if v.is_a?(Array)
              Daynamic.send(k, *v)
            elsif v.nil?
              Daynamic.send(k)
            else
              Daynamic.send(k, v)
            end
          end
        end

        def match?(compare)
          new.match?(compare)
        end
      end

      def match?(compare)
        # matches every day
        true
      end
    end
  end
end
