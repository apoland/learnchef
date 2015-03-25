
package 'apache2'

file '/var/www/html/index.html' do
  content '<html>
  <body>
    <h1>hello world</h1>
  </body>
</html>'
end

service 'apache2' do
  action [:enable, :start]
end

