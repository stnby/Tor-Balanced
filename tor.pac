function FindProxyForURL(url, host) {
  if(host.match(/^(localhost|127[.]0[.]0[.]1)$/)) return 'DIRECT';
  return 'SOCKS 127.0.0.1:4000';
}
