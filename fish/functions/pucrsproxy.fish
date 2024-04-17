function pucrsproxy
  set -l proxy_url 'http://pac.pucrs.br/portoalegre.pac'

  set -l on_off $argv

  if test $on_off = 'on'
    networksetup -setautoproxyurl 'Wi-Fi' $proxy_url
    set_color green; echo 'Proxy ON'
  else
    networksetup -setautoproxyurl 'Wi-Fi' ' '
    set_color red; echo 'Proxy OFF'
  end
end
