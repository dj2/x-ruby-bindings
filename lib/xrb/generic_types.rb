module Xrd
  class Message
    def self.layout(*args)
      @fields = Hash[args]
      
      @fields.keys.each do |key|
        next if key.to_s =~ /^pad\d$/
        attr_accessor key.to_s.underscore.to_sym
      end
    end

    def self.union(*args)
      puts "HANDLE UNION"
    end
  end

  module Reply
    class Genric < Xrd::Message
      layout \
          :response_type, :uint8,
          :pad0, :uint8,
          :sequence, :uint16,
          :length, :uint32
    end
  end

  module Event
    class Generic < Xrd::Message
      layout \
          :response_type, :uint8,
          :pad0, :uint8,
          :sequence, :uint16,
          :pad, [:uint32, 7],
          :full_sequence, :uint32
    end

   class Ge < Xrd::Message
      layout \
          :response_type, :uint8,
          :pad0, :uint8,
          :sequence, :uint16,
          :length, :uint32,
          :event_type, :uint16,
          :pad1, :uint16,
          :pad, [:uint32, 5],
          :full_sequence, :uint32
    end
  end

  module Error
    class Generic < Xrd::Message
      layout \
          :response_type, :uint8,
          :error_code, :uint8,
          :sequence, :uint16,
          :resource_id, :uint32,
          :minor_code, :uint16,
          :major_code, :uint16,
          :pad0, :uint8,
          :pad, [:uint32, 5],
          :full_sequence, :uint32
    end
  end

  module Cookie
    class Void < Xrd::Message
      layout :sequence, :int
    end
  end

  module Auth
    class Info < Xrd::Message
      layout \
          :namelen, :int,
          :name, :string,
          :datalen, :int,
          :data, :pointer
    end
  end
end