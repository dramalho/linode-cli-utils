module LinodeCliUtils
  module Commands
    class ListBoxes
      def initialize(args,options)
        cfg_file = options.config_file ? options.config_file : File.expand_path('~/.linode')

        linode = LinodeCliUtils::Clients::Linode.new(config_file: cfg_file)

        linode.list_boxes.each do |box|
          say "Host #{box[:label]}"
          say "HostName #{box[:ip]}"
        end
      end
    end
  end
end
