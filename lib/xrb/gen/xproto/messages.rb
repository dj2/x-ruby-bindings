#
# This file was auto-generated. Do not edit.
#

module Xrb
  class Message
    class Char2b < Xrb::Message
      layout \
          :byte1, {type: :uint8},
          :byte2, {type: :uint8}
    end

    class Window
      attr_accessor :id

      def to_wire
        [id].pack('L')
      end
    end

    class Pixmap
      attr_accessor :id

      def to_wire
        [id].pack('L')
      end
    end

    class Cursor
      attr_accessor :id

      def to_wire
        [id].pack('L')
      end
    end

    class Font
      attr_accessor :id

      def to_wire
        [id].pack('L')
      end
    end

    class GContext
      attr_accessor :id

      def to_wire
        [id].pack('L')
      end
    end

    class Colormap
      attr_accessor :id

      def to_wire
        [id].pack('L')
      end
    end

    class Atom
      attr_accessor :id

      def to_wire
        [id].pack('L')
      end
    end

    class Drawable
      attr_accessor :id

      def to_wire
        [id].pack('L')
      end
    end

    class Fontable
      attr_accessor :id

      def to_wire
        [id].pack('L')
      end
    end

    class VisualId
      attr_accessor :id

      def to_wire
        [id].pack('L')
      end
    end

    class Timestamp
      attr_accessor :id

      def to_wire
        [id].pack('L')
      end
    end

    class Keysym
      attr_accessor :id

      def to_wire
        [id].pack('L')
      end
    end

    class Keycode
      attr_accessor :id

      def to_wire
        [id].pack('C')
      end
    end

    class Button
      attr_accessor :id

      def to_wire
        [id].pack('C')
      end
    end

    class Point < Xrb::Message
      layout \
          :x, {type: :int16},
          :y, {type: :int16}
    end

    class Rectangle < Xrb::Message
      layout \
          :x, {type: :int16},
          :y, {type: :int16},
          :width, {type: :uint16},
          :height, {type: :uint16}
    end

    class Arc < Xrb::Message
      layout \
          :x, {type: :int16},
          :y, {type: :int16},
          :width, {type: :uint16},
          :height, {type: :uint16},
          :angle1, {type: :int16},
          :angle2, {type: :int16}
    end

    class Format < Xrb::Message
      layout \
          :depth, {type: :uint8},
          :bits_per_pixel, {type: :uint8},
          :scanline_pad, {type: :uint8},
          :pad1, {size: 5, type: :uint8}
    end

    class VisualType < Xrb::Message
      layout \
          :visual_id, {type: :uint32},
          :class, {type: :uint8},
          :bits_per_rgb_value, {type: :uint8},
          :colormap_entries, {type: :uint16},
          :red_mask, {type: :uint32},
          :green_mask, {type: :uint32},
          :blue_mask, {type: :uint32},
          :pad1, {size: 4, type: :uint8}
    end

    class Depth < Xrb::Message
      layout \
          :depth, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :visuals_len, {type: :uint16},
          :pad2, {size: 4, type: :uint8},
          :visuals, {length_field: :visuals_len, type: VisualType, kind: :list}
    end

    class Screen < Xrb::Message
      layout \
          :root, {type: :uint32},
          :default_colormap, {type: :uint32},
          :white_pixel, {type: :uint32},
          :black_pixel, {type: :uint32},
          :current_input_masks, {type: :uint32},
          :width_in_pixels, {type: :uint16},
          :height_in_pixels, {type: :uint16},
          :width_in_millimeters, {type: :uint16},
          :height_in_millimeters, {type: :uint16},
          :min_installed_maps, {type: :uint16},
          :max_installed_maps, {type: :uint16},
          :root_visual, {type: :uint32},
          :backing_stores, {type: :uint8},
          :save_unders, {type: :bool},
          :root_depth, {type: :uint8},
          :allowed_depths_len, {type: :uint8},
          :allowed_depths, {length_field: :allowed_depths_len, type: Depth, kind: :list}
    end

    class SetupRequest < Xrb::Message
      layout \
          :byte_order, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :protocol_major_version, {type: :uint16},
          :protocol_minor_version, {type: :uint16},
          :authorization_protocol_name_len, {type: :uint16},
          :authorization_protocol_data_len, {type: :uint16},
          :pad2, {size: 2, type: :uint8},
          :authorization_protocol_name, {length_field: :authorization_protocol_name_len, type: :char, kind: :string},
          :authorization_protocol_data, {length_field: :authorization_protocol_data_len, type: :char, kind: :string}
    end

    class SetupFailed < Xrb::Message
      layout \
          :status, {type: :uint8},
          :reason_len, {type: :uint8},
          :protocol_major_version, {type: :uint16},
          :protocol_minor_version, {type: :uint16},
          :length, {type: :uint16},
          :reason, {length_field: :reason_len, type: :char, kind: :string}
    end

    class SetupAuthenticate < Xrb::Message
      layout \
          :status, {type: :uint8},
          :pad1, {size: 5, type: :uint8},
          :length, {type: :uint16},
          :reason, {length_field: :length, type: :char, kind: :string}
    end

    class Setup < Xrb::Message
      layout \
          :status, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :protocol_major_version, {type: :uint16},
          :protocol_minor_version, {type: :uint16},
          :length, {type: :uint16},
          :release_number, {type: :uint32},
          :resource_id_base, {type: :uint32},
          :resource_id_mask, {type: :uint32},
          :motion_buffer_size, {type: :uint32},
          :vendor_len, {type: :uint16},
          :maximum_request_length, {type: :uint16},
          :roots_len, {type: :uint8},
          :pixmap_formats_len, {type: :uint8},
          :image_byte_order, {type: :uint8},
          :bitmap_format_bit_order, {type: :uint8},
          :bitmap_format_scanline_unit, {type: :uint8},
          :bitmap_format_scanline_pad, {type: :uint8},
          :min_keycode, {type: :uint8},
          :max_keycode, {type: :uint8},
          :pad2, {size: 4, type: :uint8},
          :vendor, {length_field: :vendor_len, type: :char, kind: :string},
          :pixmap_formats, {length_field: :pixmap_formats_len, type: Format, kind: :list},
          :roots, {length_field: :roots_len, type: Screen, kind: :list}
    end

    class ClientMessageData < Xrb::Message
      union \
          :data8, {type: :uint8, size: 20},
          :data16, {type: :uint16, size: 10},
          :data32, {type: :uint32, size: 5}
    end

    class TimeCoord < Xrb::Message
      layout \
          :time, {type: :uint32},
          :x, {type: :int16},
          :y, {type: :int16}
    end

    class FontProp < Xrb::Message
      layout \
          :name, {type: :uint32},
          :value, {type: :uint32}
    end

    class CharInfo < Xrb::Message
      layout \
          :left_side_bearing, {type: :int16},
          :right_side_bearing, {type: :int16},
          :character_width, {type: :int16},
          :ascent, {type: :int16},
          :descent, {type: :int16},
          :attributes, {type: :uint16}
    end

    class Str < Xrb::Message
      layout \
          :name_len, {type: :uint8},
          :name, {length_field: :name_len, type: :char, kind: :string}
    end

    class Segment < Xrb::Message
      layout \
          :x1, {type: :int16},
          :y1, {type: :int16},
          :x2, {type: :int16},
          :y2, {type: :int16}
    end

    class ColorItem < Xrb::Message
      layout \
          :pixel, {type: :uint32},
          :red, {type: :uint16},
          :green, {type: :uint16},
          :blue, {type: :uint16},
          :flags, {type: :uint8},
          :pad1, {size: 1, type: :uint8}
    end

    class RGB < Xrb::Message
      layout \
          :red, {type: :uint16},
          :green, {type: :uint16},
          :blue, {type: :uint16},
          :pad1, {size: 2, type: :uint8}
    end

    class Host < Xrb::Message
      layout \
          :family, {type: :uint8},
          :pad1, {size: 1, type: :uint8},
          :address_len, {type: :uint16},
          :address, {length_field: :address_len, type: :uint8, kind: :list}
    end

  end
end
