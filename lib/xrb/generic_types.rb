module Xrb
  module Reply
    class Generic < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad0, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32}
    end
  end

  module Event
    class Generic < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad0, {type: :uint8},
          :sequence, {type: :uint16},
          :pad, {type: :uint32, size: 7},
          :full_sequence, {type: :uint32}
    end

   class Ge < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :pad0, {type: :uint8},
          :sequence, {type: :uint16},
          :length, {type: :uint32},
          :event_type, {type: :uint16},
          :pad1, {type: :uint16},
          :pad, {type: :uint32, size: 5},
          :full_sequence, {type: :uint32}
    end
  end

  module Error
    class Generic < Xrb::Message
      layout \
          :response_type, {type: :uint8},
          :error_code, {type: :uint8},
          :sequence, {type: :uint16},
          :resource_id, {type: :uint32},
          :minor_code, {type: :uint16},
          :major_code, {type: :uint16},
          :pad0, {type: :uint8},
          :pad, {type: :uint32, size: 5},
          :full_sequence, {type: :uint32}
    end
  end

  module Cookie
    class Void < Xrb::Message
      layout :sequence, {type: :int}
    end
  end
end