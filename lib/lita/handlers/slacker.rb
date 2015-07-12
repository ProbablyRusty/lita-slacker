module Lita
  module Handlers
    class Slacker < Handler

      route(/(.*)going\sout\sfor(.*)/i, :slacker, command: false)

      def slacker(request)
        request.reply("slacker")
      end

    end

    Lita.register_handler(Slacker)

  end
end
