<% if @web_hook.errors.empty? %>
  location.reload(true)
<% else %>
  $('[id^=web-hook_]' ).removeClass('uk-form-danger')
  $('.uk-form-help-block').empty()
  <% if @web_hook.errors.messages[:name] %>
  $('#web_hook_name').addClass('uk-form-danger')
  $('#web_hook-name-error').html('<%= escape_javascript(render partial: "error/form", locals: { label: "名前", messages: @web_hook.errors.messages[:name] }) %>')
  <% end %>
  <% if @web_hook.errors.messages[:url] %>
  $('#web_hook_url').addClass('uk-form-danger')
  $('#web_hook-url-error').html('<%= escape_javascript(render partial: "error/form", locals: { label: "URL", messages: @web_hook.errors.messages[:url] }) %>')
  <% end %>
<% end %>
