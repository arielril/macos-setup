function pucrsproxy
  set -l proxy_url 'http://pac.pucrs.br/portoalegre.pac'

  set -l on_off $argv

  if test $on_off = 'on'
    networksetup -setautoproxyurl 'Wi-Fi' $proxy_url
    networksetup -setpassiveftp 'Wi-Fi' off
    set_color green; echo 'Proxy ON'
  else
    networksetup -setautoproxyurl 'Wi-Fi' ' '
    networksetup -setpassiveftp 'Wi-Fi' off
    set_color red; echo 'Proxy OFF'
  end
end
