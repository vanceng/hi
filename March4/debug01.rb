require 'pry'

list = {'yvr' => 'Vancouver', 'yba' => 'Banff', 'yyz' => 'Toronto', 'yxx' => 'Abbotsford', 'ybw' => 'Calgary'}
 
# Why is it returning nil instead of first element of the list above
# Answer: we need to call on the key, since hash requires a key and value. In this case, 'yvr' was declared as the key.
p list['yvr']