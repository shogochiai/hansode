class Hansode::FormBuilder < ActionView::Helpers::FormBuilder

  %w(text_field text_area number_field).each do |selector|
    class_eval <<-RUBY_EVAL, __FILE__, __LINE__ + 1
      def #{selector}(method, options = {})
        control = super(method, options.except(:label).merge(class: 'form-control'))
        @template.content_tag(:div, _label_by_options(method, options) + control, class: 'form-group')
      end
    RUBY_EVAL
  end

  def select(method, choices, options = {}, html_options = {})
    control = super(method, choices, options.except(:label), html_options.merge(class: 'form-control'))
    @template.content_tag(:div, _label_by_options(method, options) + control, class: 'form-group')
  end

  def submit(value=nil, options={})
    super(value, { class: 'btn btn-primary' }.merge(options))
  end

  private
    def _label_by_options(method, options)
      options.has_key?(:label) ? self.label(method, options[:label]) : ''.html_safe
    end
end
