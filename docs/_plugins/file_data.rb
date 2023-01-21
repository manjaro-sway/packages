module Jekyll
    module MyFilters
      def file_date(input)
        File.ctime(input)
      end
    end
end
  
Liquid::Template.register_filter(Jekyll::MyFilters)
