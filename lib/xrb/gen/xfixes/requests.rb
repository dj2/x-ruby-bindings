#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XFixes
    module Request
      class QueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :client_major_version, {type: :uint32},
            :client_minor_version, {type: :uint32}
        def has_reply?
          true
        end
      end

      class ChangeSaveSet < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :mode, {type: :uint8},
            :target, {type: :uint8},
            :map, {type: :uint8},
            :pad1, {size: 1, type: :uint8},
            :window, {type: :uint32}
        def has_reply?
          false
        end
      end

      class SelectSelectionInput < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32},
            :selection, {type: :uint32},
            :event_mask, {type: :uint32}
        def has_reply?
          false
        end
      end

      class SelectCursorInput < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32},
            :event_mask, {type: :uint32}
        def has_reply?
          false
        end
      end

      class GetCursorImage < Xrb::Message
        include Xrb::Request

        OPCODE = 4

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
        def has_reply?
          true
        end
      end

      class CreateRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :region, {type: :uint32},
            :rectangles, {type: Rectangle, kind: :list}
        def has_reply?
          false
        end
      end

      class CreateRegionFromBitmap < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :region, {type: :uint32},
            :bitmap, {type: :uint32}
        def has_reply?
          false
        end
      end

      class CreateRegionFromWindow < Xrb::Message
        include Xrb::Request

        OPCODE = 7

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :region, {type: :uint32},
            :window, {type: :uint32},
            :kind, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
        def has_reply?
          false
        end
      end

      class CreateRegionFromGc < Xrb::Message
        include Xrb::Request

        OPCODE = 8

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :region, {type: :uint32},
            :gc, {type: :uint32}
        def has_reply?
          false
        end
      end

      class CreateRegionFromPicture < Xrb::Message
        include Xrb::Request

        OPCODE = 9

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :region, {type: :uint32},
            :picture, {type: :uint32}
        def has_reply?
          false
        end
      end

      class DestroyRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 10

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :region, {type: :uint32}
        def has_reply?
          false
        end
      end

      class SetRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 11

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :region, {type: :uint32},
            :rectangles, {type: Rectangle, kind: :list}
        def has_reply?
          false
        end
      end

      class CopyRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 12

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :source, {type: :uint32},
            :destination, {type: :uint32}
        def has_reply?
          false
        end
      end

      class UnionRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 13

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :source1, {type: :uint32},
            :source2, {type: :uint32},
            :destination, {type: :uint32}
        def has_reply?
          false
        end
      end

      class IntersectRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 14

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :source1, {type: :uint32},
            :source2, {type: :uint32},
            :destination, {type: :uint32}
        def has_reply?
          false
        end
      end

      class SubtractRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 15

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :source1, {type: :uint32},
            :source2, {type: :uint32},
            :destination, {type: :uint32}
        def has_reply?
          false
        end
      end

      class InvertRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 16

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :source, {type: :uint32},
            :bounds, {type: :RECTANGLE},
            :destination, {type: :uint32}
        def has_reply?
          false
        end
      end

      class TranslateRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 17

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :region, {type: :uint32},
            :dx, {type: :int16},
            :dy, {type: :int16}
        def has_reply?
          false
        end
      end

      class RegionExtents < Xrb::Message
        include Xrb::Request

        OPCODE = 18

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :source, {type: :uint32},
            :destination, {type: :uint32}
        def has_reply?
          false
        end
      end

      class FetchRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 19

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :region, {type: :uint32}
        def has_reply?
          true
        end
      end

      class SetGcClipRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 20

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :gc, {type: :uint32},
            :region, {type: :uint32},
            :x_origin, {type: :int16},
            :y_origin, {type: :int16}
        def has_reply?
          false
        end
      end

      class SetWindowShapeRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 21

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :dest, {type: :uint32},
            :dest_kind, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :x_offset, {type: :int16},
            :y_offset, {type: :int16},
            :region, {type: :uint32}
        def has_reply?
          false
        end
      end

      class SetPictureClipRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 22

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :picture, {type: :uint32},
            :region, {type: :uint32},
            :x_origin, {type: :int16},
            :y_origin, {type: :int16}
        def has_reply?
          false
        end
      end

      class SetCursorName < Xrb::Message
        include Xrb::Request

        OPCODE = 23

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :cursor, {type: :uint32},
            :nbytes, {type: :uint16},
            :pad1, {size: 2, type: :uint8},
            :name, {length_field: :nbytes, type: :char, kind: :string}
        def has_reply?
          false
        end
      end

      class GetCursorName < Xrb::Message
        include Xrb::Request

        OPCODE = 24

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :cursor, {type: :uint32}
        def has_reply?
          true
        end
      end

      class GetCursorImageAndName < Xrb::Message
        include Xrb::Request

        OPCODE = 25

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
        def has_reply?
          true
        end
      end

      class ChangeCursor < Xrb::Message
        include Xrb::Request

        OPCODE = 26

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :source, {type: :uint32},
            :destination, {type: :uint32}
        def has_reply?
          false
        end
      end

      class ChangeCursorByName < Xrb::Message
        include Xrb::Request

        OPCODE = 27

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :src, {type: :uint32},
            :nbytes, {type: :uint16},
            :pad1, {size: 2, type: :uint8},
            :name, {length_field: :nbytes, type: :char, kind: :string}
        def has_reply?
          false
        end
      end

      class ExpandRegion < Xrb::Message
        include Xrb::Request

        OPCODE = 28

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :source, {type: :uint32},
            :destination, {type: :uint32},
            :left, {type: :uint16},
            :right, {type: :uint16},
            :top, {type: :uint16},
            :bottom, {type: :uint16}
        def has_reply?
          false
        end
      end

      class HideCursor < Xrb::Message
        include Xrb::Request

        OPCODE = 29

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32}
        def has_reply?
          false
        end
      end

      class ShowCursor < Xrb::Message
        include Xrb::Request

        OPCODE = 30

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32}
        def has_reply?
          false
        end
      end

    end
  end
end
