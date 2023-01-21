module Jekyll
    module MyFilters
      def file_date(input)
        File.birthtime(input)
      end
    end
end
  
Liquid::Template.register_filter(Jekyll::MyFilters)
