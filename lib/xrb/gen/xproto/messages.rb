#
# This file was auto-generated. Do not edit.
#

module Xrb
  class Message
    class Char2b < Xrb::Message
      layout \
          :byte1, :uint8,
          :byte2, :uint8
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
          :x, :int16,
          :y, :int16
    end
    
    class Rectangle < Xrb::Message
      layout \
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16
    end
    
    class Arc < Xrb::Message
      layout \
          :x, :int16,
          :y, :int16,
          :width, :uint16,
          :height, :uint16,
          :angle1, :int16,
          :angle2, :int16
    end
    
    class Format < Xrb::Message
      layout \
          :depth, :uint8,
          :bits_per_pixel, :uint8,
          :scanline_pad, :uint8,
          :pad1, [:uint8, 5]
    end
    
    class VisualType < Xrb::Message
      layout \
          :visual_id, :uint32,
          :class, :uint8,
          :bits_per_rgb_value, :uint8,
          :colormap_entries, :uint16,
          :red_mask, :uint32,
          :green_mask, :uint32,
          :blue_mask, :uint32,
          :pad1, [:uint8, 4]
    end
    
    class Depth < Xrb::Message
      layout \
          :depth, :uint8,
          :pad1, [:uint8, 1],
          :visuals_len, :uint16,
          :pad2, [:uint8, 4]
    end
    
    class Screen < Xrb::Message
      layout \
          :root, :uint32,
          :default_colormap, :uint32,
          :white_pixel, :uint32,
          :black_pixel, :uint32,
          :current_input_masks, :uint32,
          :width_in_pixels, :uint16,
          :height_in_pixels, :uint16,
          :width_in_millimeters, :uint16,
          :height_in_millimeters, :uint16,
          :min_installed_maps, :uint16,
          :max_installed_maps, :uint16,
          :root_visual, :uint32,
          :backing_stores, :uint8,
          :save_unders, :bool,
          :root_depth, :uint8,
          :allowed_depths_len, :uint8
    end
    
    class SetupRequest < Xrb::Message
      layout \
          :byte_order, :uint8,
          :pad1, [:uint8, 1],
          :protocol_major_version, :uint16,
          :protocol_minor_version, :uint16,
          :authorization_protocol_name_len, :uint16,
          :authorization_protocol_data_len, :uint16,
          :pad2, [:uint8, 2]
    end
    
    class SetupFailed < Xrb::Message
      layout \
          :status, :uint8,
          :reason_len, :uint8,
          :protocol_major_version, :uint16,
          :protocol_minor_version, :uint16,
          :length, :uint16
    end
    
    class SetupAuthenticate < Xrb::Message
      layout \
          :status, :uint8,
          :pad1, [:uint8, 5],
          :length, :uint16
    end
    
    class Setup < Xrb::Message
      layout \
          :status, :uint8,
          :pad1, [:uint8, 1],
          :protocol_major_version, :uint16,
          :protocol_minor_version, :uint16,
          :length, :uint16,
          :release_number, :uint32,
          :resource_id_base, :uint32,
          :resource_id_mask, :uint32,
          :motion_buffer_size, :uint32,
          :vendor_len, :uint16,
          :maximum_request_length, :uint16,
          :roots_len, :uint8,
          :pixmap_formats_len, :uint8,
          :image_byte_order, :uint8,
          :bitmap_format_bit_order, :uint8,
          :bitmap_format_scanline_unit, :uint8,
          :bitmap_format_scanline_pad, :uint8,
          :min_keycode, :uint8,
          :max_keycode, :uint8,
          :pad2, [:uint8, 4]
    end
    
    class ClientMessageData < Xrb::Message
      union \
          :data8, [:uint8, 20],
          :data16, [:uint16, 10],
          :data32, [:uint32, 5]
    end
    
    class TimeCoord < Xrb::Message
      layout \
          :time, :uint32,
          :x, :int16,
          :y, :int16
    end
    
    class FontProp < Xrb::Message
      layout \
          :name, :uint32,
          :value, :uint32
    end
    
    class CharInfo < Xrb::Message
      layout \
          :left_side_bearing, :int16,
          :right_side_bearing, :int16,
          :character_width, :int16,
          :ascent, :int16,
          :descent, :int16,
          :attributes, :uint16
    end
    
    class Str < Xrb::Message
      layout \
          :name_len, :uint8
    end
    
    class Segment < Xrb::Message
      layout \
          :x1, :int16,
          :y1, :int16,
          :x2, :int16,
          :y2, :int16
    end
    
    class ColorItem < Xrb::Message
      layout \
          :pixel, :uint32,
          :red, :uint16,
          :green, :uint16,
          :blue, :uint16,
          :flags, :uint8,
          :pad1, [:uint8, 1]
    end
    
    class RGB < Xrb::Message
      layout \
          :red, :uint16,
          :green, :uint16,
          :blue, :uint16,
          :pad1, [:uint8, 2]
    end
    
    class Host < Xrb::Message
      layout \
          :family, :uint8,
          :pad1, [:uint8, 1],
          :address_len, :uint16
    end
    
  end
end
