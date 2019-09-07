# Usage: . compiler.fish {contract_name}.ligo {owner_address}
# It will create a compiled version of contract and compile storage setting the owner with {owner_address}
docker run -v (pwd):/ligo -it ligolang/ligo:next compile-contract /ligo/$argv[1].ligo main > $argv[1].tz
docker run -v (pwd):/ligo -it ligolang/ligo:next compile-storage /ligo/$argv[1].ligo main "map 1n -> record owner = (\"$argv[2]\": address); end end" > $argv[1].storage