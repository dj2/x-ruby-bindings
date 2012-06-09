module Xrb
  module Reply
    class Genric < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad0, :uint8,
          :sequence, :uint16,
          :length, :uint32
    end
  end

  module Event
    class Generic < Xrb::Message
      layout \
          :response_type, :uint8,
          :pad0, :uint8,
          :sequence, :uint16,
          :pad, [:uint32, 7],
          :full_sequence, :uint32
    end

   class Ge < Xrb::Message
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
    class Generic < Xrb::Message
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
    class Void < Xrb::Message
      layout :sequence, :int
    end
  end
end