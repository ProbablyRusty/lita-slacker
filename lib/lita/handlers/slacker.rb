module Lita
  module Handlers
    class Slacker < Handler

      route(/(.*)going\sout\sfor(.*)/i, :slacker, command: false)
      route(/(.*)headed\sout(.*)/i, :slacker, command: false)
      route(/(.*)to\ssleep(.*)/i, :slacker, command: false)
      route(/(.*)take\sa\swalk(.*)/i, :slacker, command: false)
      route(/(.*)take\sa\snap(.*)/i, :slacker, command: false)
      route(/(.*)naptime(.*)/i, :slacker, command: false)
      route(/(.*)take\sa\sbreak(.*)/i, :slacker, command: false)
      route(/(.*)errands(.*)/i, :slacker, command: false)
      route(/(.*)errand(.*)/i, :slacker, command: false)
      route(/(.*)going\soffline(.*)/i, :slacker, command: false)

      def slacker(request)
        request.reply("slacker")
      end

    end

    Lita.register_handler(Slacker)

  end
end
