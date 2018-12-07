# REGEX ou exressão regular
# Contem => *
# termina com => $
# começa com => ^

After('@logout') do
  find('.navbar a[href*=dropdown]').click
  find('.navbar a[href$=logout]').click
end

Capybara.default_max_wait_time = 5