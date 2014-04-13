require "extend_data/version"

module ExtendData

  def self.reload()
  	Object.class_eval { remove_const(:EXTEND_DATA) } if Object.const_defined?(:EXTEND_DATA)
  end

  def Object.const_missing(name)
    if name.to_s =~ /^EXTEND_DATA$/

      # get
      path = (caller[0].split(":")).first
      file = File.open(path).read
      app, data = file.gsub("\r\n", "\n").split(/^__END__$/, 2)

      if data.nil?
      	return super
      end

      # create
      sections      = %w(END) | data.scan(/^__([\w\d_\-]+)__$/).flatten
      sections_data = data.split(/^__[\w\d_\-]+__$\n/)

      # assign
      extend_data = Hash.new
      sections.zip(sections_data).each do |e|
      	extend_data[e.first] = e.last
      end

      #p path, data, sections_data, extend_data
      const_set(name, extend_data)

    else
      super
    end
  end

end
