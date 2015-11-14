class HTML
  def initialize(&block)
    @rendered_html=""
    instance_eval(&block)
  end

  def method_missing(tag, *args, &block)
    if args.first.is_a? Hash
      properties = args.shift.map do |p|
        p.join("=")
      end
      properties * " "
    end
    @rendered_html << "<#{tag} #{properties}>"
    if block_given?
      instance_eval(&block)
    else
      @rendered_html << "#{args.first}"
    end
    @rendered_html << "</#{tag}>"
  end

  def render
    @rendered_html
  end
end

html = HTML.new do
  h2 "h2"
  ul id: "nav",class: "list" do
    li "list1"
    li "list2"
  end
end

def h2

end