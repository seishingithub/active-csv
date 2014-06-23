class Widget

  # always call super
  # always define respond_to_missing?

  def method_missing(method_name, *args, &block)
    if method_name == :foo
      puts "yay!"
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    if method_name == :foo
      true
    else
      super
    end
  end

end

w = Widget.new

p w.respond_to?(:foo) # false