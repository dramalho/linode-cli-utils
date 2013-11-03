module LinodeCliUtils
  module Clients
    class Linode
      def initialize(options = {})
        if options.include?(:config_file)
          load_configuration_from_file(options[:config_file])
        else
          configure(options)
        end

        @client = ::Linode.new(api_key: @api_key)
      end

      def list_boxes
        boxes = @client.linode.list
        boxes.map do |box|
          # Find the IP's
          ips = @client.linode.ip.list(LinodeId: box.linodeid)
          {
            label: box.label, 
            ip: ips.detect {|ip| ip.ispublic == 1}.ipaddress
          }
        end
      end

      protected

      def load_configuration_from_file(file)
        cfg = YAML.load_file(file)

        raise "Invalid configuration file #{file}" unless cfg

        configure(cfg.to_hash)
      end

      def configure(options = {})
        @api_key = options['api']['key']
      end
    end
  end
end
