#
# This file was auto-generated. Do not edit.
#

module Xrb
  module XPrint
    module Request
      class PrintQueryVersion < Xrb::Message
        include Xrb::Request

        OPCODE = 0

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
        def has_reply?
          true
        end
      end

      class PrintGetPrinterList < Xrb::Message
        include Xrb::Request

        OPCODE = 1

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :printerNameLen, {type: :uint32},
            :localeLen, {type: :uint32},
            :printer_name, {length_field: :printerNameLen, type: :char, kind: :string},
            :locale, {length_field: :localeLen, type: :char, kind: :string}
        def has_reply?
          true
        end
      end

      class PrintRehashPrinterList < Xrb::Message
        include Xrb::Request

        OPCODE = 20

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
        def has_reply?
          false
        end
      end

      class CreateContext < Xrb::Message
        include Xrb::Request

        OPCODE = 2

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context_id, {type: :uint32},
            :printerNameLen, {type: :uint32},
            :localeLen, {type: :uint32},
            :printerName, {length_field: :printerNameLen, type: :char, kind: :string},
            :locale, {length_field: :localeLen, type: :char, kind: :string}
        def has_reply?
          false
        end
      end

      class PrintSetContext < Xrb::Message
        include Xrb::Request

        OPCODE = 3

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32}
        def has_reply?
          false
        end
      end

      class PrintGetContext < Xrb::Message
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

      class PrintDestroyContext < Xrb::Message
        include Xrb::Request

        OPCODE = 5

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32}
        def has_reply?
          false
        end
      end

      class PrintGetScreenOfContext < Xrb::Message
        include Xrb::Request

        OPCODE = 6

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
        def has_reply?
          true
        end
      end

      class PrintStartJob < Xrb::Message
        include Xrb::Request

        OPCODE = 7

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :output_mode, {type: :uint8}
        def has_reply?
          false
        end
      end

      class PrintEndJob < Xrb::Message
        include Xrb::Request

        OPCODE = 8

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :cancel, {type: :bool}
        def has_reply?
          false
        end
      end

      class PrintStartDoc < Xrb::Message
        include Xrb::Request

        OPCODE = 9

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :driver_mode, {type: :uint8}
        def has_reply?
          false
        end
      end

      class PrintEndDoc < Xrb::Message
        include Xrb::Request

        OPCODE = 10

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :cancel, {type: :bool}
        def has_reply?
          false
        end
      end

      class PrintPutDocumentData < Xrb::Message
        include Xrb::Request

        OPCODE = 11

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :drawable, {type: :uint32},
            :len_data, {type: :uint32},
            :len_fmt, {type: :uint16},
            :len_options, {type: :uint16},
            :data, {length_field: :len_data, type: :uint8, kind: :list},
            :doc_format, {type: :char, kind: :list},
            :options, {type: :char, kind: :list}
        def has_reply?
          false
        end
      end

      class PrintGetDocumentData < Xrb::Message
        include Xrb::Request

        OPCODE = 12

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32},
            :max_bytes, {type: :uint32}
        def has_reply?
          true
        end
      end

      class PrintStartPage < Xrb::Message
        include Xrb::Request

        OPCODE = 13

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :window, {type: :uint32}
        def has_reply?
          false
        end
      end

      class PrintEndPage < Xrb::Message
        include Xrb::Request

        OPCODE = 14

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :cancel, {type: :bool},
            :pad1, {size: 3, type: :uint8}
        def has_reply?
          false
        end
      end

      class PrintSelectInput < Xrb::Message
        include Xrb::Request

        OPCODE = 15

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32},
            :event, {type: :uint32, kind: :map}
        def has_reply?
          false
        end
      end

      class PrintInputSelected < Xrb::Message
        include Xrb::Request

        OPCODE = 16

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32}
        def has_reply?
          true
        end
      end

      class PrintGetAttributes < Xrb::Message
        include Xrb::Request

        OPCODE = 17

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32},
            :pool, {type: :uint8},
            :pad1, {size: 3, type: :uint8}
        def has_reply?
          true
        end
      end

      class PrintGetOneAttributes < Xrb::Message
        include Xrb::Request

        OPCODE = 19

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32},
            :nameLen, {type: :uint32},
            :pool, {type: :uint8},
            :pad1, {size: 3, type: :uint8},
            :name, {length_field: :nameLen, type: :char, kind: :string}
        def has_reply?
          true
        end
      end

      class PrintSetAttributes < Xrb::Message
        include Xrb::Request

        OPCODE = 18

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32},
            :stringLen, {type: :uint32},
            :pool, {type: :uint8},
            :rule, {type: :uint8},
            :pad1, {size: 2, type: :uint8},
            :attributes, {type: :char, kind: :list}
        def has_reply?
          false
        end
      end

      class PrintGetPageDimensions < Xrb::Message
        include Xrb::Request

        OPCODE = 21

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32}
        def has_reply?
          true
        end
      end

      class PrintQueryScreens < Xrb::Message
        include Xrb::Request

        OPCODE = 22

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16}
        def has_reply?
          true
        end
      end

      class PrintSetImageResolution < Xrb::Message
        include Xrb::Request

        OPCODE = 23

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32},
            :image_resolution, {type: :uint16}
        def has_reply?
          true
        end
      end

      class PrintGetImageResolution < Xrb::Message
        include Xrb::Request

        OPCODE = 24

        layout \
            :major_opcode, {type: :uint8},
            :minor_opcode, {type: :uint8},
            :length, {type: :uint16},
            :context, {type: :uint32}
        def has_reply?
          true
        end
      end

    end
  end
end
