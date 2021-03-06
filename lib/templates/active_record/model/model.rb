<% module_namespacing do -%>
class <%= class_name %> < <%= parent_class_name.classify %>

  #has_paper_trail

<% attributes.select {|attr| attr.reference? }.each do |attribute| -%>
  belongs_to :<%= attribute.name %><%= ', polymorphic: true' if attribute.polymorphic? %>
<% end -%>

<% if !accessible_attributes.empty? -%>
  attr_accessible <%= accessible_attributes.map {|a| ":#{a.name}" }.sort.join(', ') %>
<% else -%>
  # attr_accessible :title, :body
<% end -%>

  def to_s
    <%- if attributes.map{ |a| a.name }.include?('code') -%>
    code
    <%- else -%>
    "<%= class_name %> #{id}"
    <%- end -%>
  end

end
<% end -%>